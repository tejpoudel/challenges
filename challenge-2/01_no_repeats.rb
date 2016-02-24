# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeat?(year)
  # Check for uniqueness of numbers in years
  # I - Numbers/String
  # P - # Loop through each number and compare it to another number stored in an array
        # If the number already exists in the array then there is a repeat return false
        # If the number does n't exist in the check array then there is no repeat, iterate till the end
        # and return a true if okay else return a false
  # O - Boolean

  check_array = []

  year.to_s.each_char do |number|
    return false if check_array.include?(number)
    check_array << number
  end

  return true
end


def no_repeats(year_start, year_end)

  # check for unique years with no repeated numbers
  # I - numbers
  # Processing -
  #
    # Go through the years one at a time
    # Check if each number is unique in the year
    # If it is so, add it to a unique array
    # Then move on to the next year and repeat the process
    # When complete return the array of unique years
  #
  # O - array

  unique_array = []

  (year_start..year_end).each do |individual_year|
    unique_array << individual_year if no_repeat?(individual_year)
  end

  return unique_array

end

puts no_repeats(1234, 1234) #.should == [1234]
puts no_repeats(1123, 1123) #.should == []
puts no_repeats(1980, 1987) #.should == [ 1980, 1982, 1983, 1984, 1985, 1986, 1987]
