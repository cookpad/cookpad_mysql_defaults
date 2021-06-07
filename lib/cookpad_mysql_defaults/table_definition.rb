module CookpadMysqlDefaults
  module TableDefinition
    def column(name, type, index: nil, **options)
      if type == :datetime && !options.key?(:precision)
        options[:precision] = 6
      end

      super
    end
  end
end
