# frozen_string_literal: true

require "rspec"
require "palindrome_ext/string"

RSpec.describe String do
  it "has a 'palindrome?' instance method" do
    expect { "Test".palindrome? }.to_not raise_error
  end

  it "can take an argument" do
    expect { "strict_pal".palindrome? false }.to_not raise_error
  end

  it "defaults to strict" do
    expect("Wow".palindrome?).to be false
  end
end

RSpec.describe "#palindrome? strict = true" do
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
    expect(str.palindrome?(false)).to be true
  end

  it "handles non-alphabetical characters" do
    str = "Don't nod."
    expect(str.palindrome?(false)).to be true
  end

  it "returns true for single characters" do
    str = "a"
    expect(str.palindrome?).to be true
  end
end

RSpec.describe "#palindrome? strict = false" do
  let(:non_strict_pal) { "A /Bb/ a" }
  let(:non_strict_non_pal) { "Evil Olives" }
  let(:strict_pal) { "wow" }

  it "returns true for a non-strict palindrome" do
    expect(non_strict_pal.palindrome?).to be false
    expect(non_strict_pal.palindrome?(false)).to be true
  end

  it "returns false for a non-strict non-palindrome" do
    expect(non_strict_non_pal.palindrome?).to be false
    expect(non_strict_non_pal.palindrome?(false)).to be false
  end

  it "returns true for a strict palindrome" do
    expect(strict_pal.palindrome?).to be true
    expect(strict_pal.palindrome?(false)).to be true
  end
end
