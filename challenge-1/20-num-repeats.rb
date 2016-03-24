# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  # What does it this want: Count the actual repeating letters
  # Constraint: Unique letters that repeat, not how many times they repeat

  # I - String
  # O - Integer

  # Kindergaten steps
  # Loop over all the characters in the string
  # Using that character as counting point
  # While counting the numnber of times they appear.
  # If it appears more than once store in the a letter count array
  # Repeat and then return the answer
  # "alvina"
  # I would use "a" as a count paramenter and do this: string.count("a")
  # If a > 1
  # Add it to the list of letters that repeat.

  minor_bag = [] # Stores the letters that repeat during the computation

  string.each_char do |character|

    if string.count(character) > 1
      unless minor_bag.include?(character)
        minor_bag.push(character)
      end
    end

  end

  minor_bag.size


  # If using a double while loop
  # You would need to check for the previous indices
  # After you do the usual computation
  # You would then use an if statement to check if the current index is greater than the first index
  # If that is so
  # You would compare the current index to the first index moving upwards until the current index
  # Only then would your solution be valid
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
