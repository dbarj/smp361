## Usefull when sql_text query will return a HTML output.

########################
## Example 1:

title='Test 1'
main_table=''
sql_text="SELECT '<font size=\"40\">Hello there!</font>' from dual"

output_type="html"
fc_exec_item

########################
## Example 2:

title='Test 2'
main_table=''

fc_def_output_file temp_file 'myfile.txt'

echo '<font size="40">Hello there!</font>' > "${temp_file}"

input_file=${temp_file}
output_type="html"
fc_exec_item

##################################

rm -f "${temp_file}"
unset temp_file

##################################

# ########################
# ## Example 3:
# 
# echo "Executing HM Integrity Check. Please wait ..."
# 
# v_cmd="
# COL current_time NEW_V current_time FOR A15
# SELECT 'current_time: ' x, TO_CHAR(SYSDATE, 'YYYYMMDD_HH24MISS') current_time FROM DUAL;
# COL current_time clear
# 
# DEF repname = 'redost&&current_time'
# UNDEF current_time
# 
# EXEC DBMS_HM.RUN_CHECK('Redo Integrity Check', '&&repname');
# "
# 
# fc_db_run_file <(echo "${v_cmd}")
# 
# title='Redo Integrity Check'
# main_table=''
# sql_text="SELECT DBMS_HM.GET_RUN_REPORT('&&repname','html','detail') from dual"
# 
# output_type="html"
# fc_exec_item
# 
# ########################