# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. The String may have a leading + or - sign; if the first
# character is a +, your method should return a positive number; if it is a -,
# your method should return a negative number. If no sign is given, you should
# return a positive number.



NUMBERS_A = %w(0 1 2 3 4 5 6 7 8 9)

def string_to_integer(string)
  result = 0
  string.chars.each { |digit| result = result * 10 + NUMBERS_A.index(digit) }
  result
end

def string_to_signed_integer(string)
  case string[0]
  when '-'
    string.delete!('-')
    -string_to_integer(string)
  when '+'
    string.delete!('+')
    string_to_integer(string)
  else
    string_to_integer(string)
  end
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
