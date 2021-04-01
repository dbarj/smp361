##################################

title='Arrow'
main_table='DUAL'

sql_text="
SELECT 'A', 'B', '[color=blue]'  UNION ALL
SELECT 'A', 'C', '[color=blue]'  UNION ALL
SELECT 'C', 'D', '[color=blue]'  UNION ALL
SELECT 'B', 'E', '[color=blue]'  UNION ALL
SELECT 'E', 'B', '[color=blue]'  UNION ALL
SELECT 'E', 'A', '[color=blue]'  UNION ALL
SELECT 'D', 'F', '[color=green]' UNION ALL
SELECT 'G', 'H', '[color=red]'"

output_type="table graph"
fc_exec_item

##################################

title='Arrow Sample 2'

fc_def_output_file temp_file 'my.csv'

## Creating a CSV File. This file may already exist.
echo 'Source,Target,Stats' > "${temp_file}"
echo 'A,B,[color=blue]' >> "${temp_file}"
echo 'B,C,[color=blue]' >> "${temp_file}"
echo 'C,D,[color=blue]' >> "${temp_file}"
echo 'D,A,[color=blue]' >> "${temp_file}"

input_file="${temp_file}"
output_type="table graph"
fc_exec_item

##################################

rm -f "${temp_file}"
unset temp_file

##################################