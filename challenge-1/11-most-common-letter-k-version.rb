# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  #  # Loop through each character
  #  # Count it in the context of the string
  #  # eg: "alvin" --> "alvin".count('a')
  #  # Store the return value of the count in a variable
  #  # Move to the next character and repeat the process
  #  # Now if the count of the next character is higher than that of the previous, then swap counts
  #  # Repeat until end

  highest_count  = 0

  highest_letter =""

  i = 0
  while i < string.length #Krissa double while loops are EVIL!! Tell it to AppAcademy

    current_count = string.count(string[i])

    if current_count > highest_count
      highest_count = current_count
      highest_letter = string[i]
    end

    i += 1
  end
   [highest_letter, highest_count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
