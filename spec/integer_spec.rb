require 'rspec'
require 'palindrome_ext/integer'

RSpec.describe 'Integer Spec' do
  it 'has a \'palindrome?\' class method' do
    num = 1
    expect { num.palindrome? }.to_not raise_error
  end

  it 'returns true for a palindrome' do
    num = 1001
    expect(num.palindrome?).to be true
  end

  it 'returns false for a non-palindrome' do
    num = 1024
    expect(num.palindrome?).to be false
  end

  it 'can determine whether an operation is a palindrome or not' do
    expect((91 * 99).palindrome?).to be true
  end
end