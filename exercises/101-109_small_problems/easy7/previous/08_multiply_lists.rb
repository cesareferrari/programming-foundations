def multiply_list(list1, list2)
  result = []
  list1.each_with_index { |number, index| result << number * list2[index] }
  result
end

def multiply_list(list1, list2)
  list1.zip(list2).map {|arr| arr[0] * arr[1]}
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
