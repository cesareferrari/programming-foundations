NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

def string_to_integer(string)
  result = 0
  string.chars.each { |digit| result = result * 10 + NUMBERS.index(digit) }
  result
end

def string_to_signed_integer(string)
  sign = string.slice!(0) if string.start_with?('+', '-')
  return -string_to_integer(string) if sign && sign == '-'
  string_to_integer(string)
end


puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
