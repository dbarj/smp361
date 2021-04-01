######################################################

fc_def_output_file smp361_in_file 'smp361_in_file.sql'
fc_def_output_file smp361_out_file 'smp361_out_file.txt'

cat > "${smp361_in_file}" <<'END_HEREDOC'
\pset tuples_only on
\pset format unaligned
SELECT table_schema || '.' || table_name
FROM information_schema.views
where table_schema in ('pg_catalog','information_schema');
\pset tuples_only off
\pset format aligned
END_HEREDOC

fc_db_create_raw "${smp361_in_file}" "${smp361_out_file}"
  
for smp361_postgres_table in $(cat "${smp361_out_file}")
do
  title="Table: ${smp361_postgres_table}"
  main_table=${smp361_postgres_table}
  fc_gen_select_star_query "${smp361_postgres_table}" 'sql_text'
  fc_exec_item
done

rm -f "${smp361_in_file}" "${smp361_out_file}"
unset smp361_postgres_table smp361_in_file smp361_out_file

######################################################