module RubyHue
  module Resourceful
    class Base

      attr_reader :system

      def initialize(*args)
        raise NotImplementedError, "Cannot create instances of abstract base class."
      end

      def state
        @current_state ||= ResourceState.new(self)
      end

      def system=(system_obj)
        unless @system.nil?
          warn "Instances of #{self.class} may not have their system set more than once."
          return false
        end
        @system ||= system_obj
      end

      private

      def resource_path
        system.api_base_path
      end


    end
    def self.included(klass)
      klass.send(:include, InstanceMethods)
      klass.send(:extend, ClassMethods)
    end

    module InstanceMethods
      

    end
  end
end

require 'ruby_hue/resources/light'
require 'ruby_hue/resources/bridge'
require 'ruby_hue/resources/user'