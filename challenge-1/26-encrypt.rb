#write a method called encrypt that takes a string and returns an array of pairs
#each pair contains the next distinct letter in the string, and the number of consecutive repeats


# IPO Model
#
# I - 'aaabbcbbaaa' --> String
# P -
# O - ['a',3] --> Array
#
# # Steps
#
# 1. Express the question in your own words
#  - Ask yourself what's expected -- Tracking characters in a string and how many times they appear
#  - Keywords here -- next, distinct and consecutive repeats -- hghlights the flow of logic because
#  - keywords don't align with code
#
# 2. Look for I, O and check for data types. You can figure out what methods you will be using is "tool selection"
#
# 3. Conversion of a string into an array. Raw materials --> finished products
#
# 4. Introspection -- Inspect inside, look within (use pry)
#
# 5. Processing -- Think about how you would solve without a computer
#
# -- First letter take it to far left, and number it as one,
# -- Go to the second letter, if it is the same as first, increment the first number
# -- Go to the third letter and do the same
# -- Use a loop or iteration
#
# 6. Translate those steps into code

p encrypt('aaabbcbbaaa') #[['a',3],['b', 2],['c', 1],['b', 2], ['a', 3]]
p encrypt('aaaaaaaaaa') #[['a', 10]]
p encrypt('aabbcc') #[['a',2],['b',2],['c',2]]
