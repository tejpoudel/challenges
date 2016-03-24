# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)

def caesar_cipher(offset, string)
  # Rephrase the question: Move each character three steps forward and replace
  # the current character with the new one.
  # Summarize in a sentence i.e. What it wants me to do: Code translation i.e.
  # create a new alphabet i.e cryptography
  # Leave spaces as they are.
  #
  # Steps without a computer:
  # 1. Split the sentence into words
  # 2. Iterate over each word
  # 3. Iterate over each letter
  # 4. Convert the letter
  # 5. Add the letter to the new word
  # 6. Repeat the process
  # 7. Join the words
  # Constraint: The offset number must not exceed 122
  # If it exceeds 122, subtract 122 from the number,
  # Add add the result to "a" which is the first character.

  words = string.split

  new_sentence_array = []

  words.each do |word|

    new_word = ""

    word.each_char do |character|

      new_ascii_code = character.ord + offset

      if new_ascii_code > "z".ord
        result = new_ascii_code - "z".ord
        new_character = ("a".ord + result-1).chr
      else
        new_character = new_ascii_code.chr
      end

      new_word += new_character.to_s
    end

    new_sentence_array.push(new_word)

  end

  new_sentence_array.join(' ')

  # new_string.insert(white_space_location, 32.chr) if !white_space_location.nil?

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'caesar_cipher(3, "abc") == "def": ' +
  (caesar_cipher(3, 'abc') == 'def').to_s
)
puts(
  'caesar_cipher(3, "abc xyz") == "def abc": ' +
  (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
)
