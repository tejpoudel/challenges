# Create a method consecutive_string_count that will take a string as an arguments and
# return a multi-dimensional array of consecutive letters with their count.
# "aaabbcaabc" --> [[a, 3], [b, 2], [c,1],[a,2],[b,1],[c,1]

def consecutive_string_count(string)

  # Question: return the sequentialial count of similar characters in a string
  # Keyword is sequential and count, the count is very important!

  # Loop over the string scanning each individual character
  # For the first character set its count to one
  # If its equal to the next character then increment the count by one
  # If its equal to the next character then increment the count by one again
  # If its not equal to the next character, stop the incrementing, add the current character to its
  # own minor array, with the current count. Then add this to the main array.
  # Reset the current count to 1 which will be for the next character to which the current character
  # is not equal to.
  # Repeat the process until you are done with iteration
  # Finally return the contents of the main array.

  main_array = []

  index = 0

  count = 1

  string.each_char do |current_char|

    if current_char == string[index + 1] # next character
      count += 1
    else
      minor_array = [current_char, count]
      main_array << minor_array
      count = 1
    end

    index += 1

  end

  p main_array
end

consecutive_string_count("aaabbcaabc")
