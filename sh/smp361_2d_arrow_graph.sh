title='Arrow'
main_table='DUAL'

sql_text="
SELECT 'A', 'B', '[color=blue]', null FROM dual UNION ALL
SELECT 'A', 'C', '[color=blue]', null FROM dual UNION ALL
SELECT 'C', 'D', '[color=blue]', null FROM dual UNION ALL
SELECT 'B', 'E', '[color=blue]', null FROM dual UNION ALL
SELECT 'E', 'B', '[color=blue]', null FROM dual UNION ALL
SELECT 'E', 'A', '[color=blue]', null FROM dual UNION ALL
SELECT 'D', 'F', '[color=green]',null FROM dual UNION ALL
SELECT 'G', 'H', '[color=red]',  null FROM dual"

output_type="graph"
fc_exec_item

##--------------

## Real Life example: Track how deep a proxy user can go within Oracle DB

title='Proy Users'
fc_set_value_var_decode main_table "${is_cdb}" 'Y' 'CDB_PROXIES' 'DBA_PROXIES'

sql_text="SELECT  proxy , client, '[color=blue]', null FROM dba_proxies ORDER BY client"

output_type="graph"
fc_exec_item