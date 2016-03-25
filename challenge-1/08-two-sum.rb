# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)

  # I - Array
  # 0 - Array with indices of matching numbers
  # Add every number, return nil if and only if no pair sums to zero.

  # Steps
  # Loop over each number
  # Add it to the next number
  # Repeat the process until the end
  # But if the number am adding to the next is not the first number
  # Then it means that number is missing some other numbers before it.
  # So I need to add the numbers before it
  # By subtracting those numbers from its index until I get to zero.
  # That way I will be sure I have added all the numbers.
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
