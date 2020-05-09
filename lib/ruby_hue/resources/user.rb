module RubyHue
  module Resources
    class UserAuthorization
      attr_accessor :username, :bridge

      def initialize(bridge: nil, username: nil)
        @bridge = bridge
        @username = username
      end

      def authorized?
        return false if username.nil?
        test_bridge_authorization
      end

      private

      def test_bridge_authorization
        
      end

    end
  end
end