title='Pie Sample 1'
main_table='DUAL'

sql_text=$'
SELECT \'Scott\',
       90 samples,
       45 percent,
       \'a\' text
FROM
  dual
UNION ALL
SELECT \'Tiger\',
       90 samples,
       45 percent,
       \'b\' text
FROM
  dual
UNION ALL
SELECT \'Others\',
       20 samples,
       10 percent,
       \'c\' text
FROM
  dual'

output_type="table pie"
fc_exec_item