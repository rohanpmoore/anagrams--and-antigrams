class Gram_Storage
  attr_reader(:word_one, :word_two)
  attr_accessor(:type)
  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
    @is_anagram = true
  end
end

def anagram(word_one, word_two)
  storage = Gram_Storage.new

end
