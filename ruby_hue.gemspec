require_relative 'lib/ruby_hue/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_hue"
  spec.version       = RubyHue::VERSION
  spec.authors       = ["John Ochs"]
  spec.email         = ["code@johnochs.io"]

  spec.summary       = %q{RubyHue is an object-oriented wrapper around the Philips Hue API.}
  spec.description   = %q{RubyHue is a ruby gem that allows interaction with and control of a local Hue ecosystem via the Hue API.}
  spec.homepage      = "https://github.com/johnochs/ruby_hue"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/johnochs/ruby_hue"
  spec.metadata["changelog_uri"] = "https://github.com/johnochs/ruby_hue"

  spec.add_dependency 'addressable', '~> 2.7'

  spec.add_development_dependency 'pry', '~> 0.13.0'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
