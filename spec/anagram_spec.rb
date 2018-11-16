require 'rspec'
require 'anagram'

describe('anagram') do
  it('will take two words and check if they are anagrams') do
    expect(anagram("ruby", "bury")).to(eq(true))
  end
end
