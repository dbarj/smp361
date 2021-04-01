## Query that will run SELECT * FROM v$instance and generate a HTML output
title='Simple SQL'
main_table='v$instance'

sql_text='
SELECT
  *
FROM
  v$instance'

output_type='csv'
fc_exec_item

######################################################

title='Simple SQL 2'
main_table='v$instance'

sql_text='
SELECT
  *
FROM
  information_schema.views'

output_type='csv'
fc_exec_item
