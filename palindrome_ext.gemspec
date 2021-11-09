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
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aj-rom/palindrome_ext"
  spec.metadata["changelog_uri"] = "https://github.com/aj-rom/palindrome_ext"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
