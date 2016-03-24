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


   first_number = 0

   while first_number < nums.size

     next_number = first_number + 1

     while next_number < nums.size

       if first_number + next_number == 0
         result = [nums.index(first_number), nums.index(next_number)]
         return results
       end

       if next_number > 0

         initial_number = 0

         until initial_number == next_number do
           if next_number + initial_number == 0
             result = [nums.index(next_number), nums.index(initial_number)]
             return results
           end

           initial_number += 1
         end
       end

       next_number += 1
     end

     first_number += 1
   end

   puts result

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
