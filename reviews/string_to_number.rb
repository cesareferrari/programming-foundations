# String#to_i
# String#to_int
# Integer
#
# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# You may not use any of the methods mentioned above.
#
# calculate the result by analyzing the characters in the string.

DIGITS = { '1' => 1,
           '2' => 2,
           '3' => 3,
           '4' => 4,
           '5' => 5,
           '6' => 6,
           '7' => 7,
           '8' => 8,
           '9' => 9,
           '0' => 0 }


def string_to_integer(string)
  result = 0
  position = 1

  string.reverse.chars.each do |char|
    result += DIGITS[char] * position
    position *= 10
  end

  result
end

def string_to_integer(string)
  digits = string.chars.map {|char| DIGITS[char]}

  result = 0
  digits.each {|digit| result = result * 10 + digit}

  result
end


puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
p string_to_integer('-570')
