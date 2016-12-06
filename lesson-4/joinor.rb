# Write a method called joinor that will produce the following result:

# Take passed in array
# pop out last element
#
# if array has only 1 element left
#   prepend last element with last_separator
# else
#   join remaining array elements with separator
#   (at this point we have a string)
#   prepend last element with last_separator
# add last element back to the string and

def joinor(array, separator = ', ', word = 'or')
  case array.size
  when 0, 1
    array.join
  when 2
    array.join(" #{word} ")
  else
    last_element = array.pop.to_s
    array.join(separator) << last_element.prepend("#{separator}#{word} ")
  end
end

puts joinor([]) == ""
puts joinor([1]) == "1"
puts joinor([1, 2]) == "1 or 2"
puts joinor([1, 2], '', 'and') == "1 and 2"
puts joinor([1, 2, 3]) == "1, 2, or 3"
puts joinor([1, 2, 3], '; ') == "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and') ==  "1, 2, and 3"
