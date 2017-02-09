# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word is swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces


# Collect the individual words from the original string
# 
# Create a new variable that holds the return string
# 
# For each word
#   slice away the first and last letters and save them separately
#   first = slice!(0)
#   last = slice!(-1)
# 
#   put the first at the end
#   put the last at the beginning
# 
#   "#{last}#{string}#{first}"
# 
#   add the recomposed word to the return string
# 
# Return the return string

def swap(string)
  words = string.split(' ')
  result = []

  words.each do |word|
    first_char = word.slice!(0)
    last_char = word.slice!(-1)
    result << "#{last_char}#{word}#{first_char}"
  end

  result.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
