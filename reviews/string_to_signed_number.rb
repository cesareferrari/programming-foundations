# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. The String may have a leading + or - sign; if the first
# character is a +, your method should return a positive number; if it is a -,
# your method should return a negative number. If no sign is given, you
# should return a positive number.

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
  digits = string.chars.map {|char| DIGITS[char]}

  result = 0
  digits.each {|digit| result = result * 10 + digit}

  result
end

# This works, but better solution below.
# def string_to_signed_integer(string)
#   if string.start_with?('+')
#     string_to_integer(string.delete('+'))
#   elsif string.start_with?('-')
#     -string_to_integer(string.delete('-'))
#   else
#     string_to_integer(string)
#   end
# end

def string_to_signed_integer(string)
  sign = string.slice!(0) if string.start_with?('+', '-')
  result = string_to_integer(string)
  return -result if sign && sign == '-'
  result
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
