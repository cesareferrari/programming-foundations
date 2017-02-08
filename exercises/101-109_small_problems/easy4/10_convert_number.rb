def integer_to_string(integer)
  digits = []

  loop do
    integer, digit = integer.divmod(10)
    digits << digit
    break if integer == 0
  end

  digits.reverse.join
end

def signed_integer_to_string(integer)
  return '0' if integer == 0
  return integer_to_string(integer.abs).prepend('-') if integer < 0
  integer_to_string(integer).prepend('+')
end


puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
