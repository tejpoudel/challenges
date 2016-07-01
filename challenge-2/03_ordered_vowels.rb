# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

def ordered_vowel_words(str)

  Summary: Return the words that are match the known order of vowels

  I - String
  P -
  O - String

  Kindergaten steps

  1. Loop over each word.
  2. Call the ordered_vowel_word method on each
  3. Store the result in a variable
  4. Return the results of ordered vowel words
end

def ordered_vowel_word(word)

  Kindergaten steps

  1. Have a container of known vowels in their order
  2. Loop over the word and check if each character in the word is container in the known list of vowels
  3. In other words we are checking if the word contains vowels
  4. Pull out those vowels and store then somewhere
  5. Create a copy of the known list of vowels, with the none appearing vowels removed
  6. Then compare the two, the list of vowels from the word, and the edited list of known vowels
  7. If they match, then return true else return false

  constraints: Need to cater for duplicate vowels
end
