# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
#
# Difficulty: medium.

def is_power_of_two?(num)
  # What is a power of two? -- An exponent to the base of 2
  # i.e you can multiply 2 by itself a certain number of times and get that result of that number
  # which is being checked eg 2**3 is 8. So 8 is a power of 2 because you can multiply 2 by itself
  # 3 times to get it.

  # Steps
  # Get a number, divide it by 2
  # Repeat division by 2 until you get to its base case which is one.
  # Return true because that number is a power of 2, only when the original number's value is one.
  # When you try to repeatedly divide the number by 2 and it does n't give a modulo result of zero
  # Then that number is not a power of 2
  # Note: A power of 2 returns one as its final result when divided continously by 2 whereas a non power of 2
  # does n't.
  if num < 1
    return false
  end

  while true
    if num == 1 # You have come to the lowest value possible after diving by 2
      return true
    elsif num % 2 == 0
      num = num / 2
    else
      return false
    end
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)
