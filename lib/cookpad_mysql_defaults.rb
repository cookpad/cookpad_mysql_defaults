require "cookpad_mysql_defaults/mysql_table_default_options"

# Only load datetime precision patch on Active Record 6.1 or below as
# datetime(6) is now a default. See https://github.com/rails/rails/pull/42297
if ActiveRecord::VERSION::MAJOR < 7
  require "cookpad_mysql_defaults/table_definition"
  require "cookpad_mysql_defaults/schema_statements"
end
