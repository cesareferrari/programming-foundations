# separate the digits with divmod(10) and put them into array of digits
# map the array of integers into an array of strings by using the DIGITS table
# join the resulting array


DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(int)
  digits = []
  loop do
    int, digit = int.divmod(10)
    digits.unshift digit
    break if int == 0
  end

  digits.map { |digit| DIGITS[digit] }.join
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
