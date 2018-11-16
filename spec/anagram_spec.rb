require 'rspec'
require 'anagram'

describe('anagram') do
  it('will return not an anagram if two words are not anagrams') do
    expect(anagram("ruby", "rest")).to(eq("ruby and rest are neither."))
  end
  it('will take two words and check if they are anagrams') do
    expect(anagram("ruby", "bury")).to(eq("ruby and bury are anagrams."))
  end
  it('will take two words and check if they are anagrams, ignoring case') do
    expect(anagram("resTFUL", "FLUster")).to(eq("resTFUL and FLUster are anagrams."))
  end
  it('will tell you if you did not input a real word') do
    expect(anagram("ruby", "brrt")).to(eq("one or more inputs are not words."))
  end
  it('will tell the user if the words are antigrams') do
    expect(anagram("ruby", "dog")).to(eq("ruby and dog are antigrams."))
  end
  it('will correctly identify anagrams of multiple words') do
    expect(anagram("rail safety", "fairy tales")).to(eq("rail safety and fairy tales are anagrams."))
  end
end
