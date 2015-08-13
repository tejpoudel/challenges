# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(string)

  # Split the string to get an array
  words = string.split(" ")

  # Create a final array to store the capitalized words
  final_array = []

  # Now loop over each word in the array
  i = 0

  until i == words.length
  # Get the first character of each word inside the array
  # store it back inside the array

    final_array.push(words[i][0].upcase!)
     i = i + 1
  end

  final_array.join(" ")

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)
puts(
  'capitalize_words("i am layla") == "I Am Layla": ' +
  (capitalize_words("i am layla") == "I Am Layla").to_s
)
