NUMBERS = { '0' => 0,
            '1' => 1,
            '2' => 2,
            '3' => 3,
            '4' => 4,
            '5' => 5,
            '6' => 6,
            '7' => 7,
            '8' => 8,
            '9' => 9 }

# Using a hash lookup table
def string_to_integer(string)
  result = 0
  number_strings = string.chars

  number_strings.each do |number_string|
    result = result * 10 + NUMBERS[number_string]
  end

  result
end


NUMBERS_A = %w(0 1 2 3 4 5 6 7 8 9)

# Using an array lookup table
def string_to_integer2(string)
  result = 0
  number_strings = string.chars

  number_strings.each do |number_string|
    result = result * 10 + NUMBERS_A.index(number_string)
  end

  result
end


puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

puts string_to_integer2('4321') == 4321
puts string_to_integer2('570') == 570
