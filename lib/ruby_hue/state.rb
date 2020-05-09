module RubyHue
  module State
    class StateStore
      def initialize
        @store = Hash.new { |h, k| h[k] ||= Array.new }
      end
      
      def <<(instance)
        instance.class
      end
    class << self
      def instance
        @state ||= 