title='Exec with Skip Sample'
main_table='V$DATABASE'

sql_text="SELECT USERNAME
&&skip_ver_le_11. , ORACLE_MAINTAINED
FROM DBA_USERS"

fc_exec_item

fc_def_empty_var skip_ver_le_12_2
fc_def_empty_var skip_ver_le_12_1
fc_def_empty_var skip_ver_le_12
fc_def_empty_var skip_ver_le_11_2
fc_def_empty_var skip_ver_le_11_1
fc_def_empty_var skip_ver_le_11
fc_def_empty_var skip_ver_le_10_2
fc_def_empty_var skip_ver_le_10_1
fc_def_empty_var skip_ver_le_10
fc_def_empty_var skip_ver_le_9_2
fc_def_empty_var skip_ver_le_9_1
fc_def_empty_var skip_ver_le_9

## Will only execute the query (call 9a_pre_one) if "skip_ver" variable is null
## For 12c, Sections 1-3 will not be in the final output

title='Section 4c - Step 1'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_12_2}fc_exec_item

title='Section 4c - Step 2'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_12_1}fc_exec_item

title='Section 4c - Step 3'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_12}fc_exec_item

title='Section 4c - Step 4'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_11_2}fc_exec_item

title='Section 4c - Step 5'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_11_1}fc_exec_item

title='Section 4c - Step 6'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_11}fc_exec_item

title='Section 4c - Step 7'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_10_2}fc_exec_item

title='Section 4c - Step 8'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_10_1}fc_exec_item

title='Section 4c - Step 9'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_10}fc_exec_item

title='Section 4c - Step 10'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_9_2}fc_exec_item

title='Section 4c - Step 11'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_9_1}fc_exec_item

title='Section 4c - Step 12'
main_table='V$DATABASE';
fc_gen_select_star_query "${main_table}" 'sql_text'
${skip_ver_le_9}fc_exec_item
