module Spyglass
  class Configurator
    # A hash of key => default
    OPTIONS = {
      :port => 4222,
      :host => '0.0.0.0',
      :workers => 2,
      :timeout => 30,
      :config_ru_path => 'config.ru',
      :verbose => false,
      :vverbose => false
    }
    
    class << self
      OPTIONS.each do |key, default|
        # attr_writer key
      
        define_method(key) do |*args|
          arg = args.shift
          if arg
            instance_variable_set("@#{key}", arg)
          else
            instance_variable_get("@#{key}") || default
          end
        end
      end
    end
  end
  
  Config = Configurator
end
