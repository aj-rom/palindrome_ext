require 'palindrome_ext/string'

class Integer
  def palindrome?
    self.to_s.palindrome? true
  end
end