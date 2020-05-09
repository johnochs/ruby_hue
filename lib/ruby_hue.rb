require "ruby_hue/version"
require "ruby_hue/errors"
require "ruby_hue/state"

module RubyHue
  def self.load_state(path)
    @state = RubyHue::State.new(abs_path)
  end

  def self.save_state!
  end
end

require 'ruby_hue/resources'