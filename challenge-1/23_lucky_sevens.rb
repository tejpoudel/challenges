#Write a function lucky_sevens?(numbers), which
#takes in an array of integers and returns true
#if any three consecutive elements sum to 7.

def lucky_sevens?(numbers)

# Find out which 3 consecutive numbers add up to 7 in a given random array

# # Steps
# 1. Go through each item in the array, find the next 2 after it i.e in groups of 3
# 2. Sum the current item and its next 2, i.e the group
# 3. If they add up to 7 store them in a new array and then finally return true
# 4. If they don't add up to 7, return false
# 5. Repeat the process for each item in the array and its next 2

  # First failing iteration
  # numbers.each do |number|

  #   sum_of_three = []
  #   sum_of_three << numbers.values_at(number, number+1, number+2).reduce(:+)
  #   sum_of_three.include(7) ? true : false
  # end

  # Second successful iteration

  # Iterate through the given numbers array
  # Get the first 3 items using values_at and the range of the first 3 numbers
  # Sum them up and store in an array
  # Remove the current item from the original numbers array
  # repeats the process only if the number of items in the array is greater than or equal to 3
  # This deals with the nil error.
  # Return true if the sum of 7 exists in the computed array from summing 3 numbers


  final_array = []

  numbers.each do |number|
    if numbers.length >= 3
      sum_of_three = numbers.values_at(0..2).inject { |x, y| x + y }
      final_array << sum_of_three
      numbers.shift(number)
    end
  end

  final_array.include?(7) ? true : false

end
