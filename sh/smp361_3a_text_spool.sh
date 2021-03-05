##--------------

title='OS Users'
out_filename='ospasswd_&&current_time..txt'
in_filename='/etc/passwd'

[ -r /etc/passwd ] && cat /etc/passwd > ospasswd.txt

input_file='ospasswd.txt'
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

echo "hi hi hi" > myfile.txt

input_file='myfile.txt'
one_spool_text_file_rename='Y'

output_type="text"
fc_exec_item

##--------------
