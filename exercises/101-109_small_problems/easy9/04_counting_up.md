Write a method that takes an integer argument, and returns an Array of
all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Input: int
Output: array of numbers

Rules:
  output numbers from 1 to int

Data Structure: Array

Algorithm:

initialize result = []

1.upto(int) do |n|
  result << n

return result



Examples:

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
