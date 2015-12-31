# Create a method consecutive_string_count that will take a string as an arguments and 
# return a multi-dimensional array of consecutive letters with their count.
# "aaabbcaabc" --> [[a, 3], [b, 2], [c,1],[a,2],[b,1],[c,1]

def consecutive_string_count(string)

  # Create an empty main bag 
  # Set index 0 
  # Create a minor bag with the first character in it 
  # Loop over the string 
  # If the current character is equal to the next character add it to the minor bag
  # If the current character is not equal to the next character, create a new array with count the number of items in the minor bag, and the identity of the last item in the minor bag. 
  # Populate the main bag with the contents  


  main_bag = []

  index = 0
  
  minor_bag = [string[index]]
  
  string.each_char do |current_char| 
    
    next_char = string[index + 1] 

    if current_char == next_char 
      minor_bag << next_char
    else 
      main_bag << [minor_bag.last, minor_bag.count]
      minor_bag = [next_char]
    end

    index += 1
  end

  p main_bag

end

consecutive_string_count("aaabbcaabc")