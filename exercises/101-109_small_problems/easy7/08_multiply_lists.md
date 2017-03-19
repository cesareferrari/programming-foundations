Write a method that takes two Array arguments in which each Array
contains a list of numbers, and returns a new Array that contains the
product of each pair of numbers from the arguments that have the same
index. You may assume that the arguments contain the same number of
elements.

Input: list1, list2
  list of number

Output: new array

Rules:
 product of each pair of numbers (with same index) from 2 arrays
 arr 1: 3
 arr 2: 9
  return 27

Algorithm:

  iterate with index on first array ( each_with_index )
  multiply number from first array with number in the same index from second array
  add result to new array
  return final result


Examples:

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
