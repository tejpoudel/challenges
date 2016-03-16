# Create a method one_off_words that will take as arguments a string and an
# array of valid words (word_list) and return an array of words from the
# word list which are the same except for a single letter at a single position


def one_off_words(str, word_list)

# Alvin
# 1. Compare first word against each item in the array
# 2. Checking if all the letters are the same except for one.
# 3. If the letters are the same except for one, store them in array.
# 4. But if the letters are not the same, or if they are the same except for 2, do not store them
# 5. Repeat the process
# 6. Return the final result


  # Store final result of matching words
  large_bag = []
    # Looping over the words in the array -step 1
  word_list.each do |word|

    # Compare each word in the array against the given string
    small_bag = []

    str.each_char do |character|
      # Check if each word includes the character
      if word.include? character
        small_bag << character
      end
    end

    # Check the difference between the word, and the size of the small_bag
    # If the difference is one, I'll store it into the main array
    # Because the words match
    # But if the difference is not one, or is more than one, I won't store it.
    # Because those words don't match
    if (str.size - small_bag.size == 1)
      # Add to the large bag
      large_bag << word
    end
  end

  large_bag

end

puts one_off_words('moor',['door', 'moot', 'boot', 'boots'])
puts one_off_words('bart', ['fcrt', 'ockd', 'dart', 'fort'])
