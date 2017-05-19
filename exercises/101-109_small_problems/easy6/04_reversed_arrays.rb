# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.




def reverse!(list)
  return list if list.size < 2

  first = 0
  last = -1

  loop do
    list[first], list[last] = list[last], list[first]
    first += 1
    last -= 1

    break if first == list.size / 2
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
reverse!(list) # => []
puts list == []
