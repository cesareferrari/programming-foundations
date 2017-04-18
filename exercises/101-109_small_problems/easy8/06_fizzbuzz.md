Write a method that takes two arguments: the first is the starting
number, and the second is the ending number. Print out all numbers
between the two numbers, except if a number is divisible by 3, print
"Fizz", if a number is divisible by 5, print "Buzz", and finally if a
number is divisible by 3 and 5, print "FizzBuzz".

Example:

fizzbuzz(1, 15) == "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"


Input: 2 numbers (start - end)

Output: string

Rules:
  print out all numbers between 2 arguments including first and last
  (1, 6) 1 2 3 4 5 6

  if n % 3 == 0 (divisible by 3) : print 'Fizz'
  if n % 5 == 0 (divisible by 5) : print 'Buzz'
  if (n % 3 == 0) && (n % 5 == 0) (divisible by 3 and 5) : print 'FizzBuzz'

Data Structure: array

Algorithm:
  initialize result as array

  start.upto(end)
    if n % 3 == 0
      result << 'Fizz'
    if n % 5 == 0
      result << 'Buzz'
    if (n % 3 == 0) && (n % 5 == 0)
      result << 'FizzBuzz'
    else
      result << n

  result.join(',')
