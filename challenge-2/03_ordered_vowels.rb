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

  # Summary: Return the words that are match the known order of vowels
  #
  # I - String
  # P -
  # O - String
  #
  # Kindergaten steps
  #
  # 1. Loop over each word.
  # 2. Call the ordered_vowel_word method on each
  # 3. Store the result in a variable
  # 4. Return the results of ordered vowel words

  words = str.split
  ordered_words = []

  words.each do |word|
    if ordered_vowel_word(word)
      ordered_words << word
    end
  end

  ordered_words.join(" ")
end

def ordered_vowel_word(word)

  # Checks if each word is ordered

  # Kindergaten steps
  #
  # 1. Have a container of known vowels in their order
  # 2. Loop over the word and check if each character in the word is container in the known list of vowels
  # 3. In other words we are checking if the word contains vowels
  # 4. Pull out those vowels and store them somewhere
  # 5. Match the vowels_in_word with those in the list of vowels

  vowels = ['a', 'e', 'i', 'o', 'u']

  vowels_in_word = []

  word.each_char do |character|
    if vowels.include?(character)
      vowels_in_word << character
    end
  end

  if vowels_in_word != vowels_in_word.sort
    return false
  end

  true
end
