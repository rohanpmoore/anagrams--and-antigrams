class Gram_Storage
  def initialize(word_one, word_two)
    @word_one = purge_characters(word_one)
    @word_two = purge_characters(word_two)
  end
  def purge_characters(word)
    remove_characters = [" ", ",", ".", "?", "!"]
    letters = word.chars
    remove_characters.each() do |character|
      letters.delete(character)
    end
    return (letters.join).downcase
  end
  def check_status
    anagram = true
    if(@word_one.length != @word_two.length)
      anagram = false
    else
      temp_word_one = @word_one
      temp_word_two = @word_two
      while(temp_word_one.length > 0)
        letter = temp_word_one[0]
        temp_word_one = temp_word_one[1..-1]
        location = temp_word_two.index(letter)
        if(!location)
          anagram = false
          break
        end
        temp_word_two = temp_word_two[0,location] + temp_word_two[location+1..-1]
      end
    end
    if anagram
      return "anagrams."
    else
      index = 0
      while index < @word_one.length
        if @word_two.include?(@word_one[index])
          return "neither."
        end
        index += 1
      end
      return "antigrams."
    end
  end
end

def anagram(word_one, word_two)
  combo_word = "#{word_one} #{word_two}"
  words = combo_word.split(" ")
  words.each() do |word|
    if !is_word(word)
      return "one or more inputs are not words."
    end
  end
  storage = Gram_Storage.new(word_one, word_two)
  return_string = "#{word_one} and #{word_two} are "
  return_string += storage.check_status
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
