def average(array)
  array.reduce(:+) / array.length
end

def average(array)
  ( array.reduce(:+) / array.length.to_f ).round(2)
end

puts average([1, 5, 87, 45, 8, 8]) #=> 25.67
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([9, 47, 23, 95, 16, 52, 107]) == 40
