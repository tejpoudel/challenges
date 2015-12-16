#Write a function lucky_sevens?(numbers), which
#takes in an array of integers and returns true
#if any three consecutive elements sum to 7.

def lucky_sevens?(numbers)

  final_array = []

  index = 0

  while index < numbers.length
    ## Need to catch an out of range exception here
    sum = numbers[index] + numbers[index + 1] + numbers[index + 2]
    final_array << sum
    index += 1
  end

  puts final_array

  final_array.include?(7)

end

puts lucky_sevens?([2,1,5])
puts lucky_sevens?([2,1,5,1,0])
puts lucky_sevens?([0,-2,1,8])
puts lucky_sevens?([7,7,7,7])
puts lucky_sevens?([3,4,3,4])
