title='Line Chart 1'
main_table='DUAL'

sql_text=$'
SELECT
  rownum           snap_id,
  TO_CHAR(sysdate+rownum,  \'YYYY-MM-DD HH24:MI:SS\') begin_time,
  TO_CHAR(sysdate+rownum+1,\'YYYY-MM-DD HH24:MI:SS\') end_time,
  mod(rownum,10)   line1,
  mod(rownum,5)    line2,
  mod(rownum,2)    line3,
  mod(rownum,20)   line4,
  0                dummy_05,
  0                dummy_06,
  0                dummy_07,
  0                dummy_08,
  0                dummy_09,
  0                dummy_10,
  0                dummy_11,
  0                dummy_12,
  0                dummy_13,
  0                dummy_14,
  0                dummy_15
FROM
  dual
CONNECT BY LEVEL <= 100'

tit_01='Mod 10'
tit_02='Mod 5'
tit_03='Mod 2'
tit_04='Mod 20'

vaxis='Total Elapsed Time in secs'
chartype='LineChart'
stacked=''

output_type="table line"
fc_exec_item

## PS: Note that columns returning "0" are ignored by line graph and columns named "dummy" are ignored by html output.

##################################

## Same graph but using AreaChart

title='Line Chart 2'
main_table='DUAL'

sql_text=$'
SELECT
  rownum           snap_id,
  TO_CHAR(sysdate+rownum,  \'YYYY-MM-DD HH24:MI:SS\') begin_time,
  TO_CHAR(sysdate+rownum+1,\'YYYY-MM-DD HH24:MI:SS\') end_time,
  mod(rownum,10)   line1,
  mod(rownum,5)    line2,
  mod(rownum,2)    line3,
  mod(rownum,20)   line4,
  0                dummy_05,
  0                dummy_06,
  0                dummy_07,
  0                dummy_08,
  0                dummy_09,
  0                dummy_10,
  0                dummy_11,
  0                dummy_12,
  0                dummy_13,
  0                dummy_14,
  0                dummy_15
FROM
  dual
CONNECT BY LEVEL <= 100'

tit_01='Mod 10'
tit_02='Mod 5'
tit_03='Mod 2'
tit_04='Mod 20'

vaxis='Total Elapsed Time in secs'
chartype='AreaChart'
stacked=''

output_type="line"
fc_exec_item

##################################

## Same graph but using AreaChart with Stacked

title='Line Chart 3'
main_table='DUAL'

sql_text=$'
SELECT
  rownum           snap_id,
  TO_CHAR(sysdate+rownum,  \'YYYY-MM-DD HH24:MI:SS\') begin_time,
  TO_CHAR(sysdate+rownum+1,\'YYYY-MM-DD HH24:MI:SS\') end_time,
  mod(rownum,10)   line1,
  mod(rownum,5)    line2,
  mod(rownum,2)    line3,
  mod(rownum,20)   line4,
  0                dummy_05,
  0                dummy_06,
  0                dummy_07,
  0                dummy_08,
  0                dummy_09,
  0                dummy_10,
  0                dummy_11,
  0                dummy_12,
  0                dummy_13,
  0                dummy_14,
  0                dummy_15
FROM
  dual
CONNECT BY LEVEL <= 100'

tit_01='Mod 10'
tit_02='Mod 5'
tit_03='Mod 2'
tit_04='Mod 20'

vaxis='Total Elapsed Time in secs'
chartype='AreaChart'
stacked='isStacked: true,'

output_type="line"
fc_exec_item

##################################

## Line Graph from csv file separated by ;

title='Line Chart 4'
main_table='DUAL'

fc_def_output_file temp_file 'my.csv'

## Creating a CSV File. This file may already exist.
echo 'Date,User,System,Idle' > "${temp_file}"
echo '"2017-05-18 16:00:06",20,10,70' >> "${temp_file}"
echo '"2017-05-18 16:00:07",10,10,80' >> "${temp_file}"
echo '"2017-05-18 16:00:08",0,10,90' >> "${temp_file}"

tit_01='Info 1'
tit_02='Info 2'
tit_03='Info 3'
tit_04=''

## If input_file variable is set, line_chart code will look for it and ignore sql_text.
vaxis='Total Elapsed Time in secs'
chartype='AreaChart'
stacked='isStacked: true,'

input_file="${temp_file}"
output_type="table csv line"
fc_exec_item

##################################

rm -f "${temp_file}"
unset temp_file

##################################

## Testing something BIG now

title='Line Chart 5'
main_table='DUAL'

sql_text=$'
SELECT
  rownum           snap_id,
  TO_CHAR(sysdate+rownum,  \'YYYY-MM-DD HH24:MI:SS\') begin_time,
  TO_CHAR(sysdate+rownum+1,\'YYYY-MM-DD HH24:MI:SS\') end_time,
  mod(rownum,10)   line1,
  mod(rownum,5)    line2,
  mod(rownum,2)    line3,
  mod(rownum,20)   line4,
  mod(rownum,50)   line5,
  mod(rownum,100)   line6,
  0                dummy_07,
  0                dummy_08,
  0                dummy_09,
  0                dummy_10,
  0                dummy_11,
  0                dummy_12,
  0                dummy_13,
  0                dummy_14,
  0                dummy_15
FROM
  dual
CONNECT BY LEVEL <= 10000'

tit_01='Mod 10'
tit_02='Mod 5'
tit_03='Mod 2'
tit_04='Mod 20'
tit_05='Mod 50'
tit_06='Mod 100'

max_rows=20000

vaxis='Total Elapsed Time in secs'
chartype='AreaChart'
stacked='isStacked: true,'

output_type="line"
fc_exec_item