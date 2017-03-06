def merge(ary1, ary2)
  result = []
  ary1.each { |element| result << element }
  ary2.each { |element| result << element unless result.include?(element) }
  result
end

def merge(ary1, ary2)
  ary1 | ary2
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts merge([1, 1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
