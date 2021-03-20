# frozen_string_literal: true

require_relative "lib/longbeach_events/version"

Gem::Specification.new do |spec|
  spec.name          = "longbeach_events"
  spec.version       = LongbeachEvents::VERSION
  spec.authors       = ["cowboy-mike"]
  spec.email         = ["mike@mnanto.com"]

  spec.summary       = "Pulls interesting events in Long Beach"
  spec.homepage      = "https://bobs.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://bobs.com"
  spec.metadata["changelog_uri"] = "https://bobs.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "nokogiri"
  spec.add_dependency "open-uri"
  spec.add_development_dependency "pry"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
