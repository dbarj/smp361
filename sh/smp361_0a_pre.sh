## Put here any customization that you want to load always before starting the sections.
## Note it will load only once in the beggining.

# skip_if_not_mysql will be empty ONLY if target database is mysql
fc_set_value_var_decode skip_if_not_mysql "${moat370_sw_db_type}" mysql '' '-'

# skip_if_not_oracle will be empty ONLY if target database is oracle
fc_set_value_var_decode skip_if_not_oracle "${moat370_sw_db_type}" oracle '' '-'

# The 2 variables above will be used on 00_sections.csv to skip some sections.