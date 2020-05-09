module RubyHue
  module Network
    
    def initialize(config)
      @config = config
      generate_device_type_string
    end

    def load(file)

    private

    def generate_device_type_string
      return @device_type_string unless @device_type_string.nil?
      hostname = %x(hostname).trim rescue 'localhost'
      user = %(whoami).trim || 'root'
      @device_type_string = "ruby_hue\##{user}@#{hostname}"
    end

    end
  end
end