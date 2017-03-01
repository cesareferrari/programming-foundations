Write a method that takes an Array as an argument, and reverses its
elements in place; that is, mutate the Array passed in to this method.
The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.


Input: 1 argument: array
Output: same array with reversed elements

Rule: mutate the same array

list[0], list[1], list[2], list[3] = list[-1], list[-2], list[-3], list[-4]

0  -1
1  -2
2  -3
3  -4

number + 1 turned into negative

list.each_index do |index|
  list(index) = -(index + 1)
end

for each element in the list
assign new index

---
Use temporary array to store elements of original array

temp = []
original = [1, 2, 3, 4]

loop through the original array
pop out last element and add to temp array
temp << original.pop

Copy the elements of the temp array in original array position using map

---


Algorithm:

initialize temp array
loop through original array until the original array is empty
  for each element, pop out last element and add to temp array
original array map each element to the corresponding element in temp array
return original array


Examples:

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!([]) # => []
list == []
