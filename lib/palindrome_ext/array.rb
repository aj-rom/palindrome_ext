# frozen_string_literal: true

require "palindrome_ext/string"

# Overrides Default Array Class by adding {palindrome?} method.
class Array
  # @param strict whether or not to ignore whitespace and non-alphanumeric characters.
  # @return [Boolean] Whether or not the array is a palindrome.
  def palindrome?(strict = true)
    return self == reverse if strict

    arr = map { |x| x.to_s.downcase.tr("^a-z0-9", "") }
    arr.delete_if(&:empty?)
    arr == arr.reverse
  end
end
