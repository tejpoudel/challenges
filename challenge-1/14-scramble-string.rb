# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.

def scramble_string(string, positions)

  # I - string, array
  # P -
  # 0 - string
  #
  # No constraints
  #
  # Summary, what does the question want: Use the array indices to create a new string
  # Map the indices in the array with the character positions in the string
  #
  #
  # Solve without a computer

  # 1. Get the array
  # 2. Loop over the array
  # 3. Get each item in the array
  # 4. Use each item in the array to retrieve the character in the string at that index
  # 5. Add that character which has been accessed to a new string
  # 6. Then repeat the process
  # 7. Return the new string
  #

  new_string = ''

  positions.each do |position|
    string_character = string[position]

    new_string += string_character

  end

  new_string

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
  (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
)
puts(
  'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"): ' +
  (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm").to_s
)
