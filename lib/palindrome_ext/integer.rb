# frozen_string_literal: true

require "palindrome_ext/string"

class Integer
  def palindrome?
    to_s.palindrome? true
  end
end
