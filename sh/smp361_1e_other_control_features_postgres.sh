## All queries are limited by default to 10000 rows (or moat370_def_sql_maxrows) to avoid extremely big outputs.
## To change this behaviour, you can change max_rows before calling each fc_exec_item

title='Returning 20000 rows'

sql_text='
SELECT
  generate_series as line
FROM
  generate_series(1,20000)'

fc_exec_item

##################################

title='Trully returning 20000 rows'

sql_text='
SELECT
  generate_series as line
FROM
  generate_series(1,20000)'

max_rows=20000
fc_exec_item

##################################

title='Query will take 5 secs'

sql_text='
SELECT pg_sleep(5)'

fc_exec_item

##################################

# This query will abort if takes more than 3 seconds to run.

title='Query would take 100 secs'

sql_text='
SELECT pg_sleep(100)'

sql_wait_secs=3
fc_exec_item

##################################

title='Fast query after failure'

sql_text='
SELECT 1,2,3'

fc_exec_item

##################################
