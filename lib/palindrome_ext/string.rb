class String
  def palindrome?(strict = false)
    return false if length < 2
    str = self
    str = str.downcase.tr('^a-z0-9', '') unless strict
    str == str.reverse
  end
end