module CookpadMysqlDefaults
  module SchemaStatements
    def add_column(table_name, column_name, type, **options)
      if type == :datetime && !options.key?(:precision)
        options[:precision] = 6
      end

      super
    end

    def create_table(table_name, **options)
      if block_given?
        super { |t| yield compatible_table_definition(t) }
      else
        super
      end
    end

    private
      def compatible_table_definition(t)
        class << t
          prepend TableDefinition
        end
        t
      end
  end
end

ActiveSupport.on_load(:active_record) do
  require "active_record/connection_adapters/abstract_mysql_adapter"
  ActiveRecord::ConnectionAdapters::AbstractMysqlAdapter.prepend(CookpadMysqlDefaults::SchemaStatements)
end
