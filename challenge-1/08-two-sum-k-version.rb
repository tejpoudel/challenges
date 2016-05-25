# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  #
  # I -Array
  # Processing
    # Look at the size of the array
    # The number of computations/additions will decrease as the index of the number increases
    # Get the first number, add it to the numbers in the rest of the position
    # If the sum of any 2 numbers equals zero, return the positions of those numbers
    # Repeat the same process for each of the rest of numbers
  # O - Array of Numbers

  first_index = 0

  while first_index < nums.size

    second_index = first_index + 1

    while second_index < nums.size

      if nums[first_index] + nums[second_index] == 0
        return [first_index, second_index]
      end

      second_index += 1
    end

    first_index += 1
  end

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
