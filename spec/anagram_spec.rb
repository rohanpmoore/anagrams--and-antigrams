require 'rspec'
require 'anagram'

describe('anagram') do
  it('will take two words and check if they are anagrams') do
    expect(anagram("ruby", "bury")).to(eq("ruby and bury are anagrams."))
  end
  it('will take two words and check if they are anagrams, ignoring case') do
    expect(anagram("resTFUL", "FLUster")).to(eq("resTFUL and FLUster are anagrams."))
  end
  it('will tell you if you did not input a real word') do
    expect(anagram("ruby", "brrt")).to(eq("one or more inputs are not words."))
  end
end
