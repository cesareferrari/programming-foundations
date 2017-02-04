#Running Totals

Write a method that takes an Array of numbers, and returns an Array with
the same number of elements, and each element has the running total from
the original Array.

##Understanding the problem

Input: 
  array
  [2, 5, 13]

Rules:
  2
  Take the first element and put it in the resulting array
  Add the second element to the first element and add it to the resulting array
  Add the third element to the last element and add it to the array
  ...

Output: 
  array with same number of elements
  each element has running total
  [2, 7, 20]


Algorithm:

initialise result as an empty array

for each input array elements:
  if result.last is nil shift the first element into the result
  else
    shift first element + result.last
    add to result array

return result array

map input array to 



Examples:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

