class Gram_Storage
  def initialize(word_one, word_two)
    @word_one = word_one.downcase
    @word_two = word_two.downcase
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
    return true
  end
end

def anagram(word_one, word_two)
  if(!is_word(word_one) | !is_word(word_two))
    return "one or more inputs are not words."
  end
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
