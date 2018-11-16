class Gram_Storage
  attr_reader(:word_one, :word_two, :is_anagram)
  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end
  def check_status
    if(@word_one.length != @word_two.length)
      return false
    else
      temp_word_one = @word_one
      temp_word_two = @word_two
      while(temp_word_one.length > 0)
        letter = temp_word_one[0]
        temp_word_one = temp_word_one[1..-1]
        location = temp_word_two.index(letter)
        if(!location)
          return false
        end
        temp_word_two = temp_word_two[0,location] + temp_word_two[location+1..-1]
      end
    end
  end
end

def anagram(word_one, word_two)
  storage = Gram_Storage.new(word_one, word_two)
  return_string = "#{word_one} and #{word_two} are "
  return_string += (storage.check_status ? "anagrams." : "not anagrams.")
end

def is_word(word)
  vowels = ["a", "e", "i", "o", "u", "y"]
  vowels.each() do |vowel|
    if word.include?(vowel)
      return true
    end
  end
  false
end
