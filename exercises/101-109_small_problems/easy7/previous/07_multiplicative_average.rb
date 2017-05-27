def show_multiplicative_average(array)
  result = (array.reduce(:*) / array.size.to_f).round(3)
  formatted_result = format("%.3f", result)
  "The result is #{formatted_result}"
end

puts show_multiplicative_average([3, 5]) == 'The result is 7.500'
puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 'The result is 28361.667'
