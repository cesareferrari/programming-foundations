def halvsies(array)
  first_half = (array.size / 2.0).ceil - 1

  first_slice = 0..first_half
  second_slice = (first_half + 1)..-1

  first = array.slice(first_slice)
  second = array.slice(second_slice)

  [first, second]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
