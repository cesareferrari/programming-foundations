The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21,
...) such that the first 2 numbers are 1 by definition, and each
subsequent number is the sum of the two previous numbers. This series
appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the
results grow at an incredibly rapid rate. For example, the 100th
Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous,
especially considering that it takes 6 iterations before it generates
the first 2 digit number.

Write a method that calculates and returns the index of the first
Fibonacci number that has the number of digits specified as an argument.
(The first Fibonacci number has index 1.)

You may assume that the argument is always greater than or equal to 2.

Examples:

find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847


Input: integer
Output: integer

Rules
  Index start at 1

  how many numbers of digits in an integer: integer.to_s.length
  list of fib. numbers converted to string
    look for string that has length same as input
    return the index + 1

  array = %w(1 1 2 3 5 8 13 21)
  digit = array.find {|digit| digit.length == 2}
  index = array.index(digit) + 1


fib = %w(1 1)

fib << (fib[-2].to_i + fib[-1].to_i).to_s

Algorithm:

generate a fibonacci array of numbers converted to string
until the digit length is equal to the argument
return the last digit's index + 1



