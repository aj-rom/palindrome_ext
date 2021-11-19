# frozen_string_literal: true

# Overrides Default String Class by adding {palindrome?} method
class String
  # @param strict [Boolean]
  #   When set to false, will ignore whitespace and string case.
  # @return [Boolean] Whether or not the string is a palindrome.
  def palindrome?(strict = true)
    str = self
    str = str.downcase.tr("^a-z0-9", "") unless strict
    str == str.reverse
  end
end
