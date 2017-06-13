Create a method that takes two integers as arguments. The first argument
is a count, and the second is the first number of a sequence that your
method will create. The method should return an Array that contains the
same number of elements as the count argument, while the values of each
element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or
greater, while the starting number can be any integer value. If the
count is 0, an empty list should be returned.

Input: Int, Int (count, base)

Output: array

Rules:
  output array has same number of elements as count

  elements are multiples of base ?
  [ Multiple of any number is a number which can be divided exactly by that number. ]
  multiple % base == 0

  How to find the next multiple of a number?
  base * 1
  base * 2
  base * 3



Algorithm:
  initialize result []

  if count == 0 return result

  start counter at 1

  loop
    multiply base times counter
    add result to result array
    increase counter by 1
    break loop when counter == count

Examples:

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []



