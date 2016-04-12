# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)

  # I - Integer
  # P -
  # O - Integer
  #
  # Constraints: The loop must execute at least 2(n + 1) times to check multiple numbers starting from 1
  #
  # Summary: Return the value of the prime number at that particular index
  #
  # Process
  # 1. Start counting all the prime numbers starting from one
  # 2. For a given n, the sample size of the array of prime numbers should n + 1
  # 3. Call is_prime on each of the numbers starting from n
  # 4. If the number is prime store it in an array
  # 5. Get the index n-1 from the prime numbers array, and return it.

  prime_array = []

  i= 1

  number = 1

  until i == (n + 1)*2 do
    if is_prime?(number)
      prime_array << number
    end
    number += 1
    i += 1
  end

  prime_array[n-1]

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
