require 'rspec'
require 'palindrome_ext'

RSpec.describe 'String Spec' do

  it 'extends the string class' do

    expect('Test'.palindrome?).to_not(raise NoMethodError)
  end

  it 'returns true for a palindrome' do
    expect('AABBAA').to be true
  end

  it 'returns false for a non-palindrome' do
    expect('ABABABA').to be false
  end



  it 'handles strings with whitespace' do
    expect('Evil Olive').to be true
  end

  it 'handles non-alphabetical characters' do
    expect("Don't nod.").to be true
  end
end