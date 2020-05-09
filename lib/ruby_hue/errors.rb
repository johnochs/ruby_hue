module RubyHue
  module Errors
    class BaseError < StandardError
      class << self
        def new(*args)
          raise NoMethodError, "No method \#new for abstract base class " \
                               "#{self.class}."
        end
      end
    end

    class LoadError < RubyHue::BaseError; end
    class DeserializationError < RubyHue::BaseError; end
    class PersistanceError < RubyHue::BaseError; end
  end
end