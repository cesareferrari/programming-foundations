NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)


def string_to_integer(string)
  result = 0
  digits = string.chars

  digits.each do |digit|
    result = result * 10 + NUMBERS.index(digit)
  end

  result
end

string_to_integer('4321') == 4321
string_to_integer('570') == 570
