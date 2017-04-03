Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

Input: array of numbers (at least 1 number)
Output: number

Rules:
create subarrays from original array
    [3, 5, 2]
  for the length of the array (0 to the length of array - 1)
  create subarrays that contain element index 0 - 0, 1 - 0, 1, 2
  - array[0]
  - array[0], array[1]
  - array[0], array[1], array[2]

reduce each subarray and sum them together and return the total
or flatten everything and reduce the whole array

Data structure: arrays

Algorithm:

group = []
counter = 0

loop through the original array
group << array.slice(0..counter)
counter += 1
break when counter == array.length

group.flatten.reduce(:+)




Examples:

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

