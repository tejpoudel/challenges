# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  string = ""

  i = 0

  old_string = num.to_s
  while i < old_string.length

    # Get the current number
    digit = old_string[i].to_i

    if digit.odd?
      string += "-" + digit.to_s + "-"
    elsif digit.even?
      string += digit.to_s
    end

    string.gsub!(/--/, "-")

    i += 1
  end

  string[-1] = "" if string.end_with? "-"

  string[0] = "" if string.start_with? "-"

  string

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
