## All queries are limited by default to 10000 rows to avoid extremely big outputs.
## To change this behaviour change max_rows before calling fc_exec_item

title='Returning 20000 rows'
main_table='dual'

sql_text='
SELECT
  rownum line
FROM
  dual
CONNECT BY LEVEL <= 20000'

fc_exec_item

##################################

title='Trully returning 20000 rows'
main_table='dual'

sql_text='
SELECT
  rownum line
FROM
  dual
CONNECT BY LEVEL <= 20000'

max_rows=20000
fc_exec_item

##################################

## I've defined default_user_list_1 and default_user_list_2 on "pre.sql", so this variable is defined before the sections start.

title='Non Default Users'
main_table='dual'

sql_text='
SELECT
  username
FROM
  dba_users
WHERE
  username not in &&default_user_list_1. and
  username not in &&default_user_list_2.'

max_rows=20000
fc_exec_item

##################################