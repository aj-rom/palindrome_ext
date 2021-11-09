# frozen_string_literal: true

require "palindrome_ext/string"

# Overrides Default Array Class by adding 'palindrome?' method
class Array
  def palindrome?
    self == reverse
  end
end
