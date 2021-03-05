title='Bar Sample 1'
main_table='DUAL'

sql_text="
SELECT 'Tower 1',
       40 percent,
       '34CF27' style,
       'This text on mouse over' text
FROM
  dual
UNION ALL
SELECT 'Tower 2',
       30 percent,
       '9FFA9D' style,
       'Now this' text
FROM
  dual
UNION ALL
SELECT 'Tower 3',
       20 percent,
       '0252D7' style,
       'And this' text
FROM
  dual
UNION ALL
SELECT 'Tower 4',
       5 percent,
       '1E96DD' style,
       'And finally this one' text
FROM
  dual"

vaxis='Most used tower'
haxis='My Towers'

output_type="table bar"
fc_exec_item

##################################

## Same as before but changing bar_height

title='Bar Sample 2'
main_table='DUAL'

sql_text="
SELECT 'Tower 1',
       40 percent,
       '34CF27' style,
       'This text on mouse over' text
FROM
  dual
UNION ALL
SELECT 'Tower 2',
       30 percent,
       '9FFA9D' style,
       'Now this' text
FROM
  dual
UNION ALL
SELECT 'Tower 3',
       20 percent,
       '0252D7' style,
       'And this' text
FROM
  dual
UNION ALL
SELECT 'Tower 4',
       5 percent,
       '1E96DD' style,
       'And finally this one' text
FROM
  dual"

skip_table='--'
skip_bar=''
bar_height='20%'

fc_exec_item