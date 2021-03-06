# frozen_string_literal: true

require_relative "lib/palindrome_ext/version"

Gem::Specification.new do |spec|
  spec.name          = "palindrome_ext"
  spec.version       = PalindromeExt::VERSION
  spec.authors       = ["A.J. Romaniello"]
  spec.email         = ["ajiellodev@gmail.com"]

  spec.summary       = "Adds methods for determining whether or not a string, integer, or array are palindromes."
  spec.description   = "Overrides Ruby's default String, Integer, and Array classes to determine whether or not their contents can be considered a palindrome."
  spec.homepage      = "https://github.com/aj-rom/palindrome_ext"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aj-rom/palindrome_ext"
  spec.metadata["changelog_uri"] = "https://github.com/aj-rom/palindrome_ext"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/palindrome_ext"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z lib README.md *.txt .yardopts`.split("\x0")
  end

  spec.require_paths = ["lib"]
  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'benchmark', '~> 0.2.0'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rubocop', '~> 1.22', '>= 1.22.3'
  spec.add_development_dependency 'rubocop-rake', '~> 0.6.0'
  spec.add_development_dependency 'yard', '~> 0.9.26'
end
