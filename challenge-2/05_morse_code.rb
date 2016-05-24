# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http =>//en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code => I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.
#
# Difficulty => 2/5

def morse_encode_word(word)
  # What the questions wants: Translate each character to its morse meaning
  # Summary: This is a mapping problem

  # I - strings
  # P -
  # O - strings with doshes and dots i.e morse

  # How to solve it without using a computer

  # 1. Loop over each character in the string
  # 2. Compare the character to the matching code
  # 3. Replace the character with the code
  # 4. Return the code

  # Constraints
  # Split a sentence into words and then apply the method
  # Put 2 spaces between words and one space between letters

  code = {
    'a' => '.-',
    'b' => '-...',
    'c' => '-.-.',
    'd' => '-..',
    'e' => '.',
    'f' => '..-.',
    'g' => '--.',
    'h' => '....',
    'i' => '..',
    'j' => '.---',
    'k' => '.-.',
    'l' => '.-..',
    'm' => '--',
    'n' => '-.',
    'o' => '---',
    'p' => '.--.',
    'q' => '--.-',
    'r' => '.-.',
    's' => '...',
    't' => '-',
    'u' => '..-',
    'v' => '...-',
    'w' => '.--',
    'x' => '-..-',
    'y' => '-.--',
    'z' => '--..',
    }

  morse_word = ""

  word.each_char do |character|
    if word.length > 1
      morse_letter = code[character] + " "
      morse_word << morse_letter
    else
      morse_letter = code[character]
      morse_word << morse_letter
    end
  end

  morse_word.strip
end

def morse_encode(str)
  # How to encode for a sentence
  # 1. Split the sentence into words
  # 2. Apply the method on each word inside the split sentence

  words = str.split
  words.map! { |word| morse_encode_word(word)}
  words.join("  ")
end
