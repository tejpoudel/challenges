# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.


def nearby_az(string)

a_position = 0
z_position = 0

  # Only run loop if it contains an 'a' or 'z'

  if (string.include? "a") && (string.include? "z")
    string.each_char do |character|
      if character == "a"
        a_position = string.index('a')
      elsif character == "z"
        z_position = string.index('z')
      end
    end

  # Ascertain positions of 'z' and 'a'

    if (z_position - a_position) > 3
      false
    elsif z_position < a_position
      false
    else
      true
    end

  # Return false if the string does n't contain an 'a' or 'z'

  else
    false
  end
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
