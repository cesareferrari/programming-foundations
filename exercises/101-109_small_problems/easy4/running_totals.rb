# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

# this works but a better solution is below with map
def my_running_total(array)
  result_array = []
  result_array << array.shift unless array.empty?

  until array.empty?
    result_array << result_array.last + array.shift
  end

  result_array
end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
