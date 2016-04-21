# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

def nearest_larger(array, index)

  # I - Array & integer
  # P -
  # O - integer
  #
  # Constraints:
  # The item at the input index should be less than the item from the return index
  # There is no other return index closer to the input index than the return index i.e. distance
  # If there is a tie, look for the number closest to the left i.e lesser index

  # Summary: We are looking for the index of the number greater than the number in the input index

  # Get the value of the number at the input index
  # Loop over the array
  # Compare the value of each item to the input index
  # If the value of the item is greater than the value of the input index
  # And if the index distance of that number is less than or equal to 1 from in the input number
  # Then get the index of that value and return it
  # Repeat the process

  input_value = array[index]

  return_value = nil

  array.each do |number|
    if number > input_value 
      return_value = number
    end
  end

  array.index(return_value)

end

puts nearest_larger([2,3,4,8], 2) #-> 3
puts nearest_larger([2,8,4,3], 2) #-> 1
puts nearest_larger([2,6,4,6], 2) #-> 1
puts nearest_larger([8,2,4,3], 2) #-> 0
puts nearest_larger([2,6,4,6], 2) # -> 1
puts nearest_larger([8,2,4,3], 2) # -> 0
puts nearest_larger([2,4,3,8], 1) # -> 3
puts nearest_larger([2, 6, 4, 8], 3) # -> nil
puts nearest_larger([2, 6, 9, 4, 8], 3) # -> 2
