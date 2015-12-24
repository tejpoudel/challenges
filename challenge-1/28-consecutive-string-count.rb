# Create a method consecutive_string_count that will take a string as an arguments
# and return a multi-dimensional array of consecutive letters with their count.
# "aaabbcaabc" --> [[a, 3], [b, 2], [c,1],[a,2],[b,1],[c,1]

def consecutive_string_count(string)
  # Inputs - String - data type
  # Processing -
  # Outputs - Nested Array - data type

  # Think about you would solve it without code

  # Kindergaten Recipe
  #
  # 1 - Get a bunch of bags for tracking letters
  # 2 - Create a bag for the first letter, set a counter or count it as one
  # 3 - Go through the letters in the word one by one
  # 4 - If the next letter is the same as the current letter, throw that letter into the same bag,
  #     also increment that individual counter
  # 5 - However if the next letter is not the same as the current letter, leave counter as 1 and throw
  #     that letter into its own bag with its own individual counter.
  # 6 - CAUTION: Count the number of letters which are in the same bag, and throw it inside the bag as well
  # 7 - Add this bag of individual letters to the main bag.
  # 8 - Repeat the same process for every letter until done.

  # Assumptions: The individual counter for each letter starts at one, we assume that the letter already exists
  # Constraint: Tracking the counter once for each individual type of character and avoiding repetition
  # Constraint: Sum consecitive similar characters

  main_bag = []

  index = 0

  count = 0

  string.each_char do |character|
    if character == string[index + 1]
      count += 1
    else
      count = 1
    end

    main_bag << [character, count ]
  end

  p main_bag
end

consecutive_string_count("aaabbcaabc")


# Current results

 # Expected --> [[a, 3], [b, 2], [c,1],[a,2],[b,1],[c,1]
 # Returns --> [["a", 1], ["a", 2], ["a", 3], ["b", 1], ["b", 1], ["c", 1], ["a", 2], ["a", 3], ["b", 1], ["c", 1]]
