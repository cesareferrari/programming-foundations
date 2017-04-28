# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.


# The String#ljust method returns a new string of length specified in the first argument and padded with whatever is in the second argument. I am calling it on an empty string, so I just get the padding with 1 and 0.


def stringy(int)
  ''.ljust(int, '10')
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
