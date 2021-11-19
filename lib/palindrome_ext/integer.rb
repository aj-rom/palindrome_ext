# frozen_string_literal: true

require "palindrome_ext/string"

# Overrides Default Integer Class by adding {palindrome?} method.
class Integer
  # @return [Boolean] Whether or not the Integer is a palindrome.
  def palindrome?
    to_s.palindrome? true
  end
end
