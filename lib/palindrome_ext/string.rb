class String
  def palindrome?
    return false if length < 2

    str = self.downcase
    str == str.reverse
  end
end