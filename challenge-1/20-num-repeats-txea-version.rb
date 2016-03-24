# Num Repeats #20
# Write a method that takes in a string and returns the number of letters that
# appear more than once in the string.
# You may assume the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the string.

def num_repeats(string)

count = 0

i = 0

minor_bag = []

while i < string.length

    j = i + 1

    while j <= string.length

        if string[i] == string[j]
          count += 1
          unless minor_bag.include?(string[j])
              minor_bag.push(string[j])
          end
        end

  # You would need to check for the previous indices
  # For that you would then use an if statement to check if the current
  # index is greater than the first index
  # If that is so
  # You would compare the current index to the first index moving upwards
  # until the current index
  # Only then would your solution be valid

    if j > string.index(string[0])
    # compare j to the first index
    # compare j to the second index
    # compare j to the next index up until the current j value
      k = 0 # This will refer to the first letter/index in the original string

      previous_count = 0

      while k < j
        if string[j] == string[k]
          previous_count += 1
          # store the letter somewhere
          unless minor_bag.include?(string[k])
            minor_bag.push(string[k])
          end
        end

        k += 1
      end

    end

    j += 1

  end

  i += 1
end

# You would have a list of the letters that repeat and get their size.

minor_bag.size

end


#These are tests to check that your code is working. After writing your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s) # one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
