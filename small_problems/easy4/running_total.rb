def running_total(array)
  new_array = []

  return array if array.empty?

  new_array << array.shift

  array.each do |number|
    new_array << new_array.last + number
  end

  new_array
end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
