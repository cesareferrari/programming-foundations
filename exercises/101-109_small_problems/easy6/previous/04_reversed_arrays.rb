# def reverse!(list)
#   temp = []
#
#   until list.empty?
#     temp << list.pop
#   end
#
#   until temp.empty?
#     list << temp.shift
#   end
#
#   list
# end


def reverse!(list)
  index_left = 0
  index_right = -1

  while index_left < list.length / 2
    list[index_left], list[index_right] = list[index_right], list[index_left]
    index_left += 1
    index_right -= 1
  end

  list
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
reverse!([]) # => []
puts list == []
