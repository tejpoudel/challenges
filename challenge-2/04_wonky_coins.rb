# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

def wonky_coins(n)
  # Problem: Return all zero coins from every single denomination i.e divide till you get zero
  #
  # Summary: Track the count of zero coins in every denomination given
  #
  # I - Integer
  # P -
  # O - Integer
  #
  # Constraint: Zero denominations have a coin as well. Also round down numbers.
  #
  # Process
  # For each number N divide it 3 times to get coins
  # First by N/2
  # Second by N/3
  # Third by N/4
  # Store the coins somewhere
  # Then if each coin is greater than zero repeat the division
  # Repeat until you end up with zero coins only
  # Return the results of the number of coins you have produced.

  if n == 0
    return 1
  else
    return wonky_coins(n.fdiv(2).floor) + wonky_coins(n.fdiv(3).floor) + wonky_coins(n.fdiv(4).floor)
  end

end
