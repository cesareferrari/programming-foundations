# Write a method that takes a positive integer or zero, and converts it to a
# string representation.

# 4321 % 10 => 1
# 4321 / 10 => 432
#
# 432 % 10 => 2
# 432 / 10 => 43
#
# 43 % 10 => 3
# 43 / 10 => 4
#
# 4 % 10 => 4
# 4 / 10 => 0

# digit = number % 10
# number / 10

STRINGS = {
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  0 => '0'
}

# def integer_to_string(int)
#   string = ''
#
#   loop do
#     string.prepend(STRINGS[int % 10])
#     break if int / 10 == 0
#     int /= 10
#   end
#
#   string
# end

def integer_to_string(int)
  string = ''

  loop do
    int, digit = int.divmod(10)
    string.prepend(STRINGS[digit])
    break if int == 0
  end

  string
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
