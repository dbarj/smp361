## Query that will run SELECT * FROM v$instance and generate a HTML output
title='Simple SQL'
main_table='v$instance'

sql_text='
SELECT
  *
FROM
  v$instance'

output_type='text'
fc_exec_item