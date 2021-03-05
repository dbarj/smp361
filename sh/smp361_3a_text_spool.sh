##--------------

title='OS Users'

fc_def_output_file input_file 'ospasswd.txt'

[ -r /etc/passwd ] && cat /etc/passwd > "${input_file}"

one_spool_text_file_rename='Y'

output_type="text"
fc_exec_item

unset out_filename in_filename

##--------------

## When one_spool_text_file_rename='N', file won't be renamed and moved to the zip file.
## Useful to create pointers to files already inside zip.

title='Readme file'

input_file='00000_readme_first.txt'
one_spool_text_file_rename='N'

output_type="text"
fc_exec_item

##--------------

title='My file'

fc_def_output_file input_file 'myfile.txt'

echo "hi hi hi" > "${input_file}"

one_spool_text_file_rename='Y'

output_type="text"
fc_exec_item

##--------------
