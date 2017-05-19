Write a method named include? that takes an Array and a search value as
arguments. This method should return true if the search value is in the
array, false if it is not. You may not use the Array#include? method in
your solution.

Input: array, object (number, string, nil)
Output: true / false

Rules:
  if object is in array, return true
  if object is not in array, return false

  compare each element in array to object
  if array element is equal to object, stop comparing and return true

Examples:

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

Algorithm:
  iterate through the input array
  compare current element to object
  if equal, return true
  else return false

