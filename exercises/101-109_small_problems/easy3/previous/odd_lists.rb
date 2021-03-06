def oddities(arr)
  result = []

  arr.each_with_index do |element, index|
    result << element if index.even?
  end

  result
end

puts oddities([2, 3, 4, 5, 2, 6]) == [2, 4, 2]
puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
