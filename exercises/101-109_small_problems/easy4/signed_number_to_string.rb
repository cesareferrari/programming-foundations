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

def integer_to_string(int)
  string = ''
  loop do
    int, digit = int.divmod(10)
    string.prepend(STRINGS[digit])
    break if int == 0
  end
  string
end

def signed_integer_to_string(int)
  case
  when int < 0 then integer_to_string(int.abs).prepend('-')
  when int == 0 then integer_to_string(int.abs)
  else integer_to_string(int).prepend('+')
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
