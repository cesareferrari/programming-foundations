BINARY_STRING = '10'

def stringy(size)
  (BINARY_STRING * size).slice(0, size)
end

def option_stringy(size, option=1)
  ( option == 0 ) ? ( str = BINARY_STRING.reverse ) : ( str = BINARY_STRING )
  (str * size).slice(0, size)
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts option_stringy(6, 0) == '010101'
puts option_stringy(9, 0) == '010101010'
puts option_stringy(4, 0) == '0101'
puts option_stringy(7, 0) == '0101010'
