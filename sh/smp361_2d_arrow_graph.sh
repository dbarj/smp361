##################################

title='Arrow'
main_table='DUAL'

sql_text="
SELECT 'A', 'B', '[color=blue]'  FROM dual UNION ALL
SELECT 'A', 'C', '[color=blue]'  FROM dual UNION ALL
SELECT 'C', 'D', '[color=blue]'  FROM dual UNION ALL
SELECT 'B', 'E', '[color=blue]'  FROM dual UNION ALL
SELECT 'E', 'B', '[color=blue]'  FROM dual UNION ALL
SELECT 'E', 'A', '[color=blue]'  FROM dual UNION ALL
SELECT 'D', 'F', '[color=green]' FROM dual UNION ALL
SELECT 'G', 'H', '[color=red]'   FROM dual"

output_type="table graph"
fc_exec_item

##################################

## Real Life example: Track how deep a proxy user can go within Oracle DB

title='Proy Users'
fc_set_value_var_decode main_table "${is_cdb}" 'Y' 'CDB_PROXIES' 'DBA_PROXIES'

sql_text="SELECT  proxy , client, '[color=blue]' FROM dba_proxies ORDER BY client"

output_type="table csv graph"
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