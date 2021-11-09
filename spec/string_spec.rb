# frozen_string_literal: true

require "rspec"
require "palindrome_ext/string"

RSpec.describe "String Spec" do
  it "has a 'palindrome?' class method" do
    expect { "Test".palindrome? }.to_not raise_error
  end

  it "returns true for a palindrome" do
    str = "AABBAA"
    expect(str.palindrome?).to be true
  end

  it "returns false for a non-palindrome" do
    str = "ABABABAC"
    expect(str.palindrome?).to be false
  end

  it "handles strings with whitespace" do
    str = "Evil Olive"
    expect(str.palindrome?).to be true
  end

  it "handles non-alphabetical characters" do
    str = "Don't nod."
    expect(str.palindrome?).to be true
  end

  it "returns true for single characters" do
    str = "a"
    expect(str.palindrome?).to be true
  end
end

RSpec.describe "Strict String Spec" do
  it "returns true for a strict palindrome" do
    str = "A /Bb/ a"
    expect(str.palindrome?).to be true
    expect(str.palindrome?(true)).to be false
  end

  it "returns false for a strict non-palindrome" do
    str = "Evil Olive"
    expect(str.palindrome?).to be true
    expect(str.palindrome?(true)).to be false
  end
end
