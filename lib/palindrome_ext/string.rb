# frozen_string_literal: true

# Overrides Default String Class by adding 'palindrome?' method
class String
  def palindrome?(strict = false)
    str = self
    str = str.downcase.tr("^a-z0-9", "") unless strict
    str == str.reverse
  end
end
