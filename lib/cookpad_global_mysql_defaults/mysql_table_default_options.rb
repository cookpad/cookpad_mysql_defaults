module MysqlTableDefaultOptions
  def create_table(table_name, options = {}, &block)
      binding.pry
    options = options.dup
    options[:options] ||= {}

    if options[:options].is_a?(Hash)
      options[:options].reverse_merge!(
        "ENGINE" => "InnoDB",
        "CHARSET" => "utf8mb4",
        "COLLATE" => "utf8mb4_unicode_ci",
        "ROW_FORMAT" => "DYNAMIC"
      )

      options[:options] = options[:options].map do |key, value|
        "#{key}=#{value}"
      end.join(" ")
    end

    super(table_name, options, &block)
  end
end

ActiveSupport.on_load(:active_record) do
  require "active_record/connection_adapters/abstract_mysql_adapter"
  ActiveRecord::ConnectionAdapters::AbstractMysqlAdapter.prepend(MysqlTableDefaultOptions)
end
