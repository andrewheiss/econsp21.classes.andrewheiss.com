library(tidyverse)
library(calendar)
library(lubridate)
library(glue)
library(rvest)

strip_html <- function(s) {
  html_text(read_html(charToRaw(s)))
}

schedule_raw <- yaml::read_yaml(here::here("data", "schedule.yaml"))$lessons

schedule_df <- enframe(schedule_raw) %>% 
  mutate(cleaned = map(value, ~as.data.frame(.))) %>% 
  unnest(cleaned) %>% 
  filter(is.na(header)) %>% 
  select(-value, -bg, -bottomborder, -header)

class_year <- "2021"
content_base <- "https://econsp21.classes.andrewheiss.com/content/"
assignment_base <- "https://econsp21.classes.andrewheiss.com/assignment/"

schedule_clean <- schedule_df %>%
  mutate(title = map_chr(title, strip_html)) %>%
  mutate(session_clean = ifelse(is.na(session), "", glue("({session}) "))) %>% 
  mutate(summary = glue("PMAP 8141: {session_clean}{title}")) %>% 
  mutate(date_start = ifelse(is.na(date_start), date, date_start),
         date_end = ifelse(is.na(date_end), date, date_end)) %>% 
  mutate(date_start = glue("{date_start}, {class_year}"),
         date_end = glue("{date_end}, {class_year}")) %>% 
  mutate(date_start_actual = map(date_start, ~as.POSIXct(., format = "%B %d, %Y")),
         date_end_actual = map(date_end, ~as.POSIXct(., format = "%B %d, %Y"))) %>% 
  mutate(content = ifelse(!is.na(content), glue("{content_base}{content}/"), NA),
         assignment = ifelse(!is.na(assignment), glue("{assignment_base}{assignment}/"), NA)) %>% 
  mutate(url = coalesce(content, assignment))

schedule_ics <- schedule_clean %>% 
  group_by(name) %>% 
  nest() %>% 
  mutate(ical = map(data,
                    ~ic_event(start = .$date_start_actual[[1]],
                              end = .$date_end_actual[[1]] + 24*60*60,
                              summary = .$summary[[1]],
                              more_properties = TRUE,
                              event_properties = c("DESCRIPTION" = .$url[[1]])))) %>% 
  ungroup() %>% 
  select(-name, -data) %>% 
  unnest(ical) %>% 
  ical() %>% 
  rename(`DTSTART;VALUE=DATE` = DTSTART,
         `DTEND;VALUE=DATE` = DTEND)

ic_write(schedule_ics, here::here("content", "schedule", "pmap8141_sp21_schedule.ics"))
