require 'palindrome_ext/string'

class Array
  def palindrome?
    self === self.reverse
  end
end