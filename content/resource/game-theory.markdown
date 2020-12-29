---
title: Game theory
menu:
  resource:
    parent: Guides
type: docs
toc: true
weight: 2
---



## Basic process for finding Nash equilibria

The easiest way to find Nash equilibria in a 2×2 game is to cover each column and row in turn and ask: "If player 1 knows that player 2 will choose X, what is player 1's best choice?" over and over again. Mark player 1's choice with a circle and mark player 2's choice with a dot. Any cells that have both a circle and a dot are equilibria.

Here's what that looks like in an invisible hand game. Anil and Bala need to choose what they're going to grow. Their payoffs (measured in utils) for each of their choices are listed in this matrix:

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#pzveloiefp .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 50%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#pzveloiefp .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#pzveloiefp .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#pzveloiefp .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#pzveloiefp .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#pzveloiefp .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#pzveloiefp .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#pzveloiefp .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#pzveloiefp .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#pzveloiefp .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#pzveloiefp .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#pzveloiefp .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#pzveloiefp .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#pzveloiefp .gt_from_md > :first-child {
  margin-top: 0;
}

#pzveloiefp .gt_from_md > :last-child {
  margin-bottom: 0;
}

#pzveloiefp .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#pzveloiefp .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#pzveloiefp .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#pzveloiefp .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#pzveloiefp .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#pzveloiefp .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#pzveloiefp .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#pzveloiefp .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#pzveloiefp .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#pzveloiefp .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#pzveloiefp .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#pzveloiefp .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#pzveloiefp .gt_left {
  text-align: left;
}

#pzveloiefp .gt_center {
  text-align: center;
}

#pzveloiefp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#pzveloiefp .gt_font_normal {
  font-weight: normal;
}

#pzveloiefp .gt_font_bold {
  font-weight: bold;
}

#pzveloiefp .gt_font_italic {
  font-style: italic;
}

#pzveloiefp .gt_super {
  font-size: 65%;
}

#pzveloiefp .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="pzveloiefp" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-weight: bold;">
        <span class="gt_column_spanner">Bala</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Rice</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Cassava</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;">Anil</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Rice</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">1, 3</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">2, 2</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Cassava</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">4, 4</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">3, 1</td>
    </tr>
  </tbody>
  
  
</table></div>

To start, cover up the column where Bala chooses to grow cassava. If Anil assumes that Bala chooses to grow rice, what's his best option? Anil would get 1 util from growing rice, and 4 from growing cassava. Cassava is best, so put a circle there.

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#dbgvzfontn .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 50%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#dbgvzfontn .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#dbgvzfontn .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#dbgvzfontn .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#dbgvzfontn .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#dbgvzfontn .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#dbgvzfontn .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#dbgvzfontn .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#dbgvzfontn .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#dbgvzfontn .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#dbgvzfontn .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#dbgvzfontn .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#dbgvzfontn .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#dbgvzfontn .gt_from_md > :first-child {
  margin-top: 0;
}

#dbgvzfontn .gt_from_md > :last-child {
  margin-bottom: 0;
}

#dbgvzfontn .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#dbgvzfontn .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#dbgvzfontn .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#dbgvzfontn .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#dbgvzfontn .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#dbgvzfontn .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#dbgvzfontn .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#dbgvzfontn .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#dbgvzfontn .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#dbgvzfontn .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#dbgvzfontn .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#dbgvzfontn .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#dbgvzfontn .gt_left {
  text-align: left;
}

#dbgvzfontn .gt_center {
  text-align: center;
}

#dbgvzfontn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#dbgvzfontn .gt_font_normal {
  font-weight: normal;
}

#dbgvzfontn .gt_font_bold {
  font-weight: bold;
}

#dbgvzfontn .gt_font_italic {
  font-style: italic;
}

#dbgvzfontn .gt_super {
  font-size: 65%;
}

#dbgvzfontn .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="dbgvzfontn" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-weight: bold;">
        <span class="gt_column_spanner">Bala</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Rice</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Cassava</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;">Anil</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Rice</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">1, 3</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;"></td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Cassava</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">⭕ 4, 4</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;"></td>
    </tr>
  </tbody>
  
  
</table></div>

Next, cover the column where Bala chooses to grow rice. If Anil assumes that Bala chooses to grow cassava, what's his best option? Anil would get 2 utils from growing rice, and 3 from growing cassava. Cassava is the best again, so put a circle there.

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#xdduhtxcdz .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 50%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#xdduhtxcdz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xdduhtxcdz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#xdduhtxcdz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#xdduhtxcdz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xdduhtxcdz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xdduhtxcdz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#xdduhtxcdz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#xdduhtxcdz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#xdduhtxcdz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#xdduhtxcdz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#xdduhtxcdz .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#xdduhtxcdz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#xdduhtxcdz .gt_from_md > :first-child {
  margin-top: 0;
}

#xdduhtxcdz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#xdduhtxcdz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#xdduhtxcdz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#xdduhtxcdz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xdduhtxcdz .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#xdduhtxcdz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xdduhtxcdz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#xdduhtxcdz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#xdduhtxcdz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xdduhtxcdz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xdduhtxcdz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#xdduhtxcdz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xdduhtxcdz .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#xdduhtxcdz .gt_left {
  text-align: left;
}

#xdduhtxcdz .gt_center {
  text-align: center;
}

#xdduhtxcdz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#xdduhtxcdz .gt_font_normal {
  font-weight: normal;
}

#xdduhtxcdz .gt_font_bold {
  font-weight: bold;
}

#xdduhtxcdz .gt_font_italic {
  font-style: italic;
}

#xdduhtxcdz .gt_super {
  font-size: 65%;
}

#xdduhtxcdz .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="xdduhtxcdz" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-weight: bold;">
        <span class="gt_column_spanner">Bala</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Rice</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Cassava</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;">Anil</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Rice</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;"></td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">2, 2</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Cassava</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">⭕</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">⭕ 3, 1</td>
    </tr>
  </tbody>
  
  
</table></div>

Regardless of what Bala chooses to do, Anil's best choice is always to grow cassava, so he'll do that. That's a pure, dominant strategy.

Let's go through the same process for Bala. Cover up the row where Anil chooses to grow cassava. If Bala assumes that Anil chooses to grow rice, what's his best option? Bala would get 3 utils from growing rice, and 2 from growing cassava. Rice is the best option, so put a dot there.

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ebohtplcwi .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 50%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ebohtplcwi .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ebohtplcwi .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ebohtplcwi .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ebohtplcwi .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ebohtplcwi .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ebohtplcwi .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ebohtplcwi .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ebohtplcwi .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ebohtplcwi .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ebohtplcwi .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ebohtplcwi .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#ebohtplcwi .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ebohtplcwi .gt_from_md > :first-child {
  margin-top: 0;
}

#ebohtplcwi .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ebohtplcwi .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ebohtplcwi .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#ebohtplcwi .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ebohtplcwi .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#ebohtplcwi .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ebohtplcwi .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ebohtplcwi .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ebohtplcwi .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ebohtplcwi .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ebohtplcwi .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#ebohtplcwi .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ebohtplcwi .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#ebohtplcwi .gt_left {
  text-align: left;
}

#ebohtplcwi .gt_center {
  text-align: center;
}

#ebohtplcwi .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ebohtplcwi .gt_font_normal {
  font-weight: normal;
}

#ebohtplcwi .gt_font_bold {
  font-weight: bold;
}

#ebohtplcwi .gt_font_italic {
  font-style: italic;
}

#ebohtplcwi .gt_super {
  font-size: 65%;
}

#ebohtplcwi .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="ebohtplcwi" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-weight: bold;">
        <span class="gt_column_spanner">Bala</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Rice</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Cassava</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;">Anil</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Rice</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">🔵 1, 3</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">2, 2</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Cassava</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">⭕</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">⭕</td>
    </tr>
  </tbody>
  
  
</table></div>

Next cover up the row where Anil chooses to grow rice If Bala assumes that Anil chooses to grow cassava, what's his best option? Bala would get 4 utils from growing rice, and only 1 from growing cassava. Rice is again his best option, so put a dot there.

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#svdhjkbuov .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 50%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#svdhjkbuov .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#svdhjkbuov .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#svdhjkbuov .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#svdhjkbuov .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#svdhjkbuov .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#svdhjkbuov .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#svdhjkbuov .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#svdhjkbuov .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#svdhjkbuov .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#svdhjkbuov .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#svdhjkbuov .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#svdhjkbuov .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#svdhjkbuov .gt_from_md > :first-child {
  margin-top: 0;
}

#svdhjkbuov .gt_from_md > :last-child {
  margin-bottom: 0;
}

#svdhjkbuov .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#svdhjkbuov .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#svdhjkbuov .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#svdhjkbuov .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#svdhjkbuov .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#svdhjkbuov .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#svdhjkbuov .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#svdhjkbuov .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#svdhjkbuov .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#svdhjkbuov .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#svdhjkbuov .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#svdhjkbuov .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#svdhjkbuov .gt_left {
  text-align: left;
}

#svdhjkbuov .gt_center {
  text-align: center;
}

#svdhjkbuov .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#svdhjkbuov .gt_font_normal {
  font-weight: normal;
}

#svdhjkbuov .gt_font_bold {
  font-weight: bold;
}

#svdhjkbuov .gt_font_italic {
  font-style: italic;
}

#svdhjkbuov .gt_super {
  font-size: 65%;
}

#svdhjkbuov .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="svdhjkbuov" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-weight: bold;">
        <span class="gt_column_spanner">Bala</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Rice</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Cassava</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;">Anil</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Rice</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">🔵</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;"></td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Cassava</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">⭕ 🔵 4, 4</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">⭕ 3, 1</td>
    </tr>
  </tbody>
  
  
</table></div>

Bala's best option—regardless of what Anil chooses to do—is to grow rice, so that's what he'll do.

Phew. Finally we can look at it all together. Here's a summary of the different possible choices and responses:

- Best response for Anil if Bala chooses Rice = Cassava
- Best response for Anil if Bala chooses Cassava = Cassava
- Best response for Bala if Anil chooses Rice = Rice
- Best response for Bala if Anil chooses Cassava = Rice

There's a circle and a dot in the (4, 4) / (Cassava, Rice) square, which means that's the Nash equilibrium. That's the
situation that both players will naturally settle on without any outside communication, given the structure of the payoffs in the game.

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#qfxsfqqyhz .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 50%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#qfxsfqqyhz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#qfxsfqqyhz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#qfxsfqqyhz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#qfxsfqqyhz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qfxsfqqyhz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#qfxsfqqyhz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#qfxsfqqyhz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#qfxsfqqyhz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#qfxsfqqyhz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#qfxsfqqyhz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#qfxsfqqyhz .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#qfxsfqqyhz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#qfxsfqqyhz .gt_from_md > :first-child {
  margin-top: 0;
}

#qfxsfqqyhz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#qfxsfqqyhz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#qfxsfqqyhz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#qfxsfqqyhz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#qfxsfqqyhz .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#qfxsfqqyhz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#qfxsfqqyhz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#qfxsfqqyhz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#qfxsfqqyhz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qfxsfqqyhz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#qfxsfqqyhz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#qfxsfqqyhz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#qfxsfqqyhz .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#qfxsfqqyhz .gt_left {
  text-align: left;
}

#qfxsfqqyhz .gt_center {
  text-align: center;
}

#qfxsfqqyhz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#qfxsfqqyhz .gt_font_normal {
  font-weight: normal;
}

#qfxsfqqyhz .gt_font_bold {
  font-weight: bold;
}

#qfxsfqqyhz .gt_font_italic {
  font-style: italic;
}

#qfxsfqqyhz .gt_super {
  font-size: 65%;
}

#qfxsfqqyhz .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="qfxsfqqyhz" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-weight: bold;">
        <span class="gt_column_spanner">Bala</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Rice</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Cassava</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;">Anil</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Rice</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">🔵 1, 3</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">2, 2</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Cassava</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">⭕ 🔵 4, 4</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">⭕ 3, 1</td>
    </tr>
  </tbody>
  
  
</table></div>

## Mixed strategies

When there is no single Nash equilibrium in a game, players have to engage in a mixed strategy and attempt to predict what the other players will do. The choices they make are determined by the payoffs in the game, since it is generally more likely that players will choose strategies that maximize their payoffs. You need to calculate two things to do this:

1. Calculate the expected utility for each choice for each player and find the probability cutoff for each choice.
2. Calculate the expected payoff for each player.

These calculations involve actual math, unlike the more simpler approach of covering rows and columns and drawing circles and dots.

There are a bunch of helpful external resources and examples of how to do this, including these. You should check these out if you're interested in this game theory stuff:

- <i class="fas fa-external-link-square-alt"></i> [Policonomics, "Mixed strategies"](https://policonomics.com/mixed-strategy/)
- <i class="fas fa-external-link-square-alt"></i> [Game Theory 101, "Calculating payoffs of mixed strategy Nash equilibria"](http://gametheory101.com/courses/game-theory-101/calculating-payoffs-of-mixed-strategy-nash-equilibria/)
- <i class="fab fa-youtube"></i> [Game Theory 101, "Chicken"](https://www.youtube.com/watch?v=sww-Zsl0IRY) (a complete example of calculating everything in a chicken game)

Let's do this with the Bach or Stravinksy game that [we used in session 3](/content/03-content/):

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#qhjovcipcv .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 70%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#qhjovcipcv .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#qhjovcipcv .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#qhjovcipcv .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#qhjovcipcv .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qhjovcipcv .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#qhjovcipcv .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#qhjovcipcv .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#qhjovcipcv .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#qhjovcipcv .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#qhjovcipcv .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#qhjovcipcv .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#qhjovcipcv .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#qhjovcipcv .gt_from_md > :first-child {
  margin-top: 0;
}

#qhjovcipcv .gt_from_md > :last-child {
  margin-bottom: 0;
}

#qhjovcipcv .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#qhjovcipcv .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#qhjovcipcv .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#qhjovcipcv .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#qhjovcipcv .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#qhjovcipcv .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#qhjovcipcv .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#qhjovcipcv .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qhjovcipcv .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#qhjovcipcv .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#qhjovcipcv .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#qhjovcipcv .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#qhjovcipcv .gt_left {
  text-align: left;
}

#qhjovcipcv .gt_center {
  text-align: center;
}

#qhjovcipcv .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#qhjovcipcv .gt_font_normal {
  font-weight: normal;
}

#qhjovcipcv .gt_font_bold {
  font-weight: bold;
}

#qhjovcipcv .gt_font_italic {
  font-style: italic;
}

#qhjovcipcv .gt_super {
  font-size: 65%;
}

#qhjovcipcv .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="qhjovcipcv" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-weight: bold;">
        <span class="gt_column_spanner">Friend 2</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Chinese</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Italian</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;">Friend 1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Chinese</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">2, 1</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">0, 0</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Italian</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">0, 0</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">1, 2</td>
    </tr>
  </tbody>
  
  
</table></div>

### Step 1: Find the equilibria

- Best response for Friend 1 if Friend 2 chooses Chinese = Chinese
- Best response for Friend 1 if Friend 2 chooses Italian = Italian
- Best response for Friend 2 if Friend 1 chooses Chinese = Chinese
- Best response for Friend 2 if Friend 1 chooses Italian = Italian

The game has two Nash equilibria, so it has a mixed strategy.

### Step 2: Calculate the expected utility for each choice for each player

We calculating the expected utility for each choice by assuming some probability for Friend 1's choices ($p$, `\(1 - p\)`) and for Friend 2's choices ($q$, `\(1 - q\)`):

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#yjwvxmycsr .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 70%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#yjwvxmycsr .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#yjwvxmycsr .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#yjwvxmycsr .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#yjwvxmycsr .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#yjwvxmycsr .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#yjwvxmycsr .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#yjwvxmycsr .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#yjwvxmycsr .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#yjwvxmycsr .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#yjwvxmycsr .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#yjwvxmycsr .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#yjwvxmycsr .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#yjwvxmycsr .gt_from_md > :first-child {
  margin-top: 0;
}

#yjwvxmycsr .gt_from_md > :last-child {
  margin-bottom: 0;
}

#yjwvxmycsr .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#yjwvxmycsr .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#yjwvxmycsr .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#yjwvxmycsr .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#yjwvxmycsr .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#yjwvxmycsr .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#yjwvxmycsr .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#yjwvxmycsr .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#yjwvxmycsr .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#yjwvxmycsr .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#yjwvxmycsr .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#yjwvxmycsr .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#yjwvxmycsr .gt_left {
  text-align: left;
}

#yjwvxmycsr .gt_center {
  text-align: center;
}

#yjwvxmycsr .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#yjwvxmycsr .gt_font_normal {
  font-weight: normal;
}

#yjwvxmycsr .gt_font_bold {
  font-weight: bold;
}

#yjwvxmycsr .gt_font_italic {
  font-style: italic;
}

#yjwvxmycsr .gt_super {
  font-size: 65%;
}

#yjwvxmycsr .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="yjwvxmycsr" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-weight: bold;">
        <span class="gt_column_spanner">Friend 2</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Chinese</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Italian</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;"></td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">\(q\)</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">\(1 - q\)</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;">Friend 1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Chinese</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">\(p\)</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">2, 1</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">0, 0</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Italian</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">\(1 - p\)</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">0, 0</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">1, 2</td>
    </tr>
  </tbody>
  
  
</table></div>

To find the expected utility for a choice, add the utility × probability for each choice in the row (or column, for Player 2). Thus,

$$
`\begin{aligned}
EU_{\text{Friend 1, Chinese}} &= 2q + 0(1-q) =& 2q \\
EU_{\text{Friend 1, Italian}} &= 0q + 1(1-q) =& 1 - q \\
EU_{\text{Friend 2, Chinese}} &= 1p + 0(1-p) =& p \\
EU_{\text{Friend 2, Italian}} &= 0p + 2(1-p) =& 2 - 2p
\end{aligned}`
$$

With these formulas, you can then determine `\(q\)` and `\(p\)` by setting the expected utilities for each player equal to each other and solving for the variable:

$$
`\begin{aligned}
2q &= 1 - q & p &= 2 - 2p \\
3q &= 1 & 3p &= 2 \\
q &= \frac{1}{3} & p &= \frac{2}{3}
\end{aligned}`
$$

Friend 1's best response is determined by what Friend 2's `\(q\)` is in real life:

$$
\text{Best response}_{\text{Friend 1}} = 
\left \\\{ 
`\begin{aligned}
&\text{Chinese } & \text{if } q < \frac{1}{3} \\
&\text{Italian } & \text{if } q > \frac{1}{3} \\
&\text{indifferent } & \text{if } q = \frac{1}{3} \\
\end{aligned}`
\right \\\}
$$

Similarly, Friend 2's best response is determined by what Friend 1's `\(p\)` is in real life:

$$
\text{Best response}_{\text{Friend 2}} = 
\left \\\{ 
`\begin{aligned}
&\text{Chinese } & \text{if } p > \frac{2}{3} \\
&\text{Italian } & \text{if } p < \frac{2}{3} \\
&\text{indifferent } & \text{if } p = \frac{1}{3} \\
\end{aligned}`
\right \\\}
$$

### Step 3: Calculate the expected payoff for each player when playing the mixed strategy

The expected payoff is the utility × probability for each cell, added together. First, calculate the joint probabilities for each cell by multiplying the row and column probabilities:

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#uxzwftigsf .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 70%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#uxzwftigsf .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#uxzwftigsf .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#uxzwftigsf .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#uxzwftigsf .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uxzwftigsf .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#uxzwftigsf .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#uxzwftigsf .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#uxzwftigsf .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#uxzwftigsf .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#uxzwftigsf .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#uxzwftigsf .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#uxzwftigsf .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#uxzwftigsf .gt_from_md > :first-child {
  margin-top: 0;
}

#uxzwftigsf .gt_from_md > :last-child {
  margin-bottom: 0;
}

#uxzwftigsf .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#uxzwftigsf .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#uxzwftigsf .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uxzwftigsf .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#uxzwftigsf .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uxzwftigsf .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#uxzwftigsf .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#uxzwftigsf .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uxzwftigsf .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#uxzwftigsf .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#uxzwftigsf .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#uxzwftigsf .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#uxzwftigsf .gt_left {
  text-align: left;
}

#uxzwftigsf .gt_center {
  text-align: center;
}

#uxzwftigsf .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#uxzwftigsf .gt_font_normal {
  font-weight: normal;
}

#uxzwftigsf .gt_font_bold {
  font-weight: bold;
}

#uxzwftigsf .gt_font_italic {
  font-style: italic;
}

#uxzwftigsf .gt_super {
  font-size: 65%;
}

#uxzwftigsf .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="uxzwftigsf" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1"></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-weight: bold;">
        <span class="gt_column_spanner">Friend 2</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Chinese</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Italian</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;"></td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">\(q = \frac{1}{3}\)</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">\(1 - q = \frac{2}{3}\)</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;">Friend 1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Chinese</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">\(p = \frac{2}{3}\)</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">\(\frac{2}{3} \times \frac{1}{3} = \frac{2}{9}\)</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">\(\frac{2}{3} \times \frac{2}{3} = \frac{4}{9}\)</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; font-weight: bold;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">Italian</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF;">\(1 - p = \frac{1}{3}\)</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">\(\frac{1}{3} \times \frac{1}{3} = \frac{1}{9}\)</td>
      <td class="gt_row gt_center" style="background-color: #FFFFFF;">\(\frac{1}{3} \times \frac{2}{3} = \frac{2}{9}\)</td>
    </tr>
  </tbody>
  
  
</table></div>

Then multiply each probability by the payoff and add all the cells together:

$$
`\begin{aligned}
EP_{\text{Friend 1}} &= (2 \times \frac{2}{9}) + (0 \times \frac{4}{9}) + (0 \times \frac{1}{9}) + (1 \times \frac{2}{9}) =& \frac{2}{3} \\
EP_{\text{Friend 2}} &= (1 \times \frac{2}{9}) + (0 \times \frac{4}{9}) + (0 \times \frac{1}{9}) + (2 \times \frac{2}{9}) =& \frac{2}{3}
\end{aligned}`
$$

The expected payoff for each player in the mixed strategy is `\(\frac{2}{3}\)`, which is less than what either player would make if they coordinated on their least preferred outcome. That is, it's better for Friend 1 to compromise and eat Italian and get 1 unit of utility rather than gamble on the mixed strategy.
