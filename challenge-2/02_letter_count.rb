# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

def letter_count(str)
  # Count the number of occurences of a letter

# I - string
# P -
# O - hash

# Processing
# Loop over each character in the string
# Set its count to 1
# Store the character
# Continue the loop
# If the current character already exists in the store
# Retrieve it and increment the count by one
# Else store the character and repeat the process all over again


  mapper = {}

  str.each_char do |character|
    if character == " "
      next
    elsif mapper.include?(character)
      mapper[character] += 1
    else
      mapper[character] = 1
    end
  end

  mapper

end
