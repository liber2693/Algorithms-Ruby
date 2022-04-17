#Write a function that takes in a string of one or more words, and returns 
#the same string, but with all five or more letter words reversed. 
#Strings passed in will consist of only letters and spaces. Spaces will be 
#included only when more than one word is present.

require 'test/unit/assertions'
include Test::Unit::Assertions

def spinWords(input)
    reversed_words = []
    array_words = input.split(" ")
    array_words.each do |word|
        word.length > 5 ? reversed_words << word.reverse : reversed_words << word
    end
    
    return reversed_words.join(" ")
end

Test.assert_equal(spinWords("Hey fellow warriors"), "Hey wollef sroirraw")
Test.assert_equal(spinWords("This is a test"), "This is a test")
Test.assert_equal(spinWords("This is another test"), "This is rehtona test")