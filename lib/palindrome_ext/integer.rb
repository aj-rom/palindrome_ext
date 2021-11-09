# frozen_string_literal: true

require "palindrome_ext/string"

# Overrides Default Integer Class by adding 'palindrome?' method
class Integer
  def palindrome?
    to_s.palindrome? true
  end
end
