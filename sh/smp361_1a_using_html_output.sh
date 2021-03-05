## Query that will run SELECT * FROM DUAL and generate a HTML output
title='Simple SQL'
main_table='v$instance'
sql_text='
SELECT
  *
FROM
  v$instance'
fc_exec_item

## Another way of writing the same query
title='Simple SQL 2'
main_table='v$instance'
sql_text='SELECT * FROM v$instance'
fc_exec_item

## Another way of writing the same query
title='Simple SQL 3'
main_table='v$instance';
fc_gen_select_star_query 'v$instance' 'sql_text'
fc_exec_item

## Another way of writing the same query
title='Simple SQL 4'
main_table='v$instance';
fc_gen_select_star_query "${main_table}" 'sql_text'
fc_exec_item

## Depending if it is cdb database, will run the either sql_text or sql_text_cdb
title='Users 1'
main_table='DBA_USERS'
sql_text='SELECT * FROM dba_users'
sql_text_cdb='SELECT * FROM cdb_users'
fc_exec_item

fc_def_empty_var is_cdb
## Same as above, but define main_table based if it is cdb database
title='Users 2'
fc_set_value_var_decode main_table "$is_cdb" 'Y' 'CDB_USERS' 'DBA_USERS'
sql_text='SELECT * FROM dba_users'
sql_text_cdb='SELECT * FROM cdb_users'
fc_exec_item

## Same as above, but define query based on main_table
title='Users 3'
fc_set_value_var_decode main_table "$is_cdb" 'Y' 'CDB_USERS' 'DBA_USERS'
fc_gen_select_star_query "${main_table}" 'sql_text'
fc_exec_item

fc_def_empty_var is_ver_ge_10
## Define main_table based on Oracle Version
title='Scheduler Jobs'
fc_set_value_var_decode main_table "$is_ver_ge_10" 'Y' 'DBA_SCHEDULER_JOBS' 'DBA_JOBS'
fc_gen_select_star_query "${main_table}" 'sql_text'
fc_exec_item