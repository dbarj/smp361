title='Bar Sample 1'
main_table='DUAL'

sql_text="
SELECT 'Tower 1',
       40 as percent,
       '34CF27' as style,
       'This text on mouse over' as text
UNION ALL
SELECT 'Tower 2',
       30 as percent,
       '9FFA9D' as style,
       'Now this' as text
UNION ALL
SELECT 'Tower 3',
       20 as percent,
       '0252D7' as style,
       'And this' as text
UNION ALL
SELECT 'Tower 4',
       5 as percent,
       '1E96DD' as style,
       'And finally this one' as text"

vaxis='Most used tower'
haxis='My Towers'
bar_minperc=5

output_type="table csv bar"
fc_exec_item

##################################

## Same as before but changing bar_height

title='Bar Sample 2'
main_table='DUAL'

sql_text="
SELECT 'Tower 1',
       40 as percent,
       '34CF27' as style,
       'This text on mouse over' as text
UNION ALL
SELECT 'Tower 2',
       30 as percent,
       '9FFA9D' as style,
       'Now this' as text
UNION ALL
SELECT 'Tower 3',
       20 as percent,
       '0252D7' as style,
       'And this' as text
UNION ALL
SELECT 'Tower 4',
       8 as percent,
       '1E96DD' as style,
       'And finally this one' as text"

output_type="table bar"
bar_height='20%'
bar_minperc=5

fc_exec_item

##################################

## In this one I don't set bar_minperc. So the chart will not be considered a percentage bar chart.

title='Bar Sample 3'
main_table='DUAL'

sql_text="
SELECT 'Tower 1',
       1400 as value,
       '34CF27' as style,
       'This text on mouse over' as text
UNION ALL
SELECT 'Tower 2',
       2300,
       '9FFA9D' as style,
       'Now this' as text
UNION ALL
SELECT 'Tower 3',
       1200,
       '0252D7' as style,
       'And this' as text
UNION ALL
SELECT 'Tower 4',
       550,
       '1E96DD' as style,
       'And finally this one' as text"

output_type="table bar"
fc_exec_item

##################################

title='Bar Sample 4'

fc_def_output_file temp_file 'my.csv'

## Creating a CSV File. This file may already exist.
echo 'Title,Sample,Color,Popup' > "${temp_file}"
echo 'Bar 1,20,34CF27,Popup 1' >> "${temp_file}"
echo 'Bar 2,20,9FFA9D,Popup 2' >> "${temp_file}"
echo 'Bar 3,60,0252D7,Popup 3' >> "${temp_file}"

input_file="${temp_file}"
output_type="table csv bar"
fc_exec_item

##################################

rm -f "${temp_file}"
unset temp_file

##################################