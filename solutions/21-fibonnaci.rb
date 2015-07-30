# Fibonnaci using recursion
# For a complete walk through check here: http://natashatherobot.com/recursion-factorials-fibonacci-ruby/ 

 def fibonnaci(n)
  if n < 2
    n
  else
    fibonnaci(n-1) + fibonnaci(n-2)
  end
end

# Fibonnaci without recursion
