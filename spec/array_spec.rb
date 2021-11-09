
require "rspec"
require "palindrome_ext/array"

RSpec.describe "Array Spec" do
  it "has a 'palindrome?' class method" do
    arr = [1]
    expect { arr.palindrome? }.to_not raise_error
  end

  it "returns true for a palindrome" do
    arr = [1, 0, 0, 1]
    expect(arr.palindrome?).to be true
  end

  it "returns false for a non-palindrome" do
    arr = [1, 0, 2, 4]
    expect(arr.palindrome?).to be false
  end
end
