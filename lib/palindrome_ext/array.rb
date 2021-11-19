# frozen_string_literal: true

require "palindrome_ext/string"

# Overrides Default Array Class by adding {palindrome?} method.
class Array
  # @return [Boolean] Whether or not the array is a palindrome.
  def palindrome?
    self == reverse
  end
end
