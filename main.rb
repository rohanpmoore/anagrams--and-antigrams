require './lib/anagram'

print "\nWelcome to Anagrams!\n"
print "This program takes two words or sentenes and tells you whether they are anagrams!\n"
print "Let's begin!\n\n"
continue = "y"
until continue == "n"
  print "Enter the first word or sentence: "
  word_one = gets.chomp
  print "Enter the second word or sentence: "
  word_two = gets.chomp
  result = anagram(word_one, word_two)
  print "#{result}\n"
  continue = "x"
  while (continue != "y") & (continue != "n")
    print "Would you like to continue (y/n): "
    continue = (gets.chomp).downcase
  end
end
print "Have a wonderful day!\n"
