title='Pie Sample 1'
main_table='DUAL'

sql_text=$'
SELECT \'Scott\',
       90 as samples,
       45 as percent,
       \'a\' as text
UNION ALL
SELECT \'Tiger\',
       90 as samples,
       45 as percent,
       \'b\' as text
UNION ALL
SELECT \'Others\',
       20 as samples,
       10 as percent,
       \'c\' as text'

output_type="table pie"
fc_exec_item

##################################

title='Pie Sample 2'
main_table='DUAL'

fc_def_output_file temp_file 'my.csv'

## Creating a CSV File. This file may already exist.
echo 'Title,Sample' > "${temp_file}"
echo 'RJ,20' >> "${temp_file}"
echo 'LC,20' >> "${temp_file}"
echo 'LA,60' >> "${temp_file}"

input_file="${temp_file}"
output_type="table csv pie"
fc_exec_item

##################################

rm -f "${temp_file}"
unset temp_file

##################################
