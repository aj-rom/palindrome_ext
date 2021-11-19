# PalindromeExt
[![Ruby Gem Version](https://badgen.net/rubygems/v/palindrome_ext)](https://rubygems.org/gems/palindrome_ext)
[![Downloads](https://badgen.net/rubygems/dt/palindrome_ext)](https://rubygems.org/gems/palindrome_ext)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![Platform](https://badgen.net/rubygems/p/palindrome_ext)](https://www.ruby-lang.org/en/)

A gem focused on extending Ruby's `String` and `Integer` classes by adding a `.palindrome?` method, 
to solve a common algorithm problem of determining whether a string or integer may be a palindrome.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'palindrome_ext'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install palindrome_ext

## Usage
Detailed documentation can be found at https://rubydoc.info/gems/palindrome_ext.

### String
```ruby
require 'palindrome_ext/string'

# Palindrome - Case Sensitive & Whitespace Sensitive
'Example...'.palindrome? # => false
'radar'.palindrome? # => true
'Radar'.palindrome? # => false

# Non-Strict Palindrome - Removes whitespace, punctuation, and capitalization before checking.
'Radar'.palindrome? false # => true
'RadaR'.palindrome? # => false
```

### Integer
```ruby
require 'palindrome_ext/integer'

# Palindrome - Check if the integer is a palindrome
112.palindrome? # => false
101.palindrome? # => true

# And works on operations
(91 * 99).palindrome? # => true
```

## Development

### Dependency Management
After forking this repo, navigate to the root directory and run:

    $ bundle install

### Testing with RSpec
To run tests, simply run:

    $ rake test

### Linting with RuboCop
To check if there are any style offenses in your forked repository and automatically fix these offenses, run:

    $ rake lint

### Benchmarking
To execute a benchmark report, run:

    $ rake benchmark


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aj-rom/palindrome_ext.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/aj-rom/palindrome_ext/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PalindromeExt project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/aj-rom/palindrome_ext/blob/master/CODE_OF_CONDUCT.md).
