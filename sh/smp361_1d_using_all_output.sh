## Note that it's not necessary to " skip_table = '' " as this is already the default behavior.
## Default behavior can be changed inside 00_config.sql

## Query that will run SELECT * FROM v$instance and generate a HTML output
title='Simple SQL'
main_table='v$instance'

sql_text='
SELECT
  *
FROM
  v$instance'

output_type='table csv'
fc_exec_item