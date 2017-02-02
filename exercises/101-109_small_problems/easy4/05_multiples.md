#Multiples of 3 and 5

Write a method that searches for all multiples of 3 or 5 that lie
between 1 and some other number, and then computes the sum of those
multiples. For instance, if the supplied number is 20, the result should
be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.


##Understanding

Input:
number (integer)
greater than 1

Rules:
find multiples of 3 and 5 between 1 and number
  find all numbers between 1..number

  for each number found
    if number % 3 == 0 || number % 5 == 0
      add to array

sum all these numbers
output result

input 5
1 2 3 4 5
multiples: 3 5
sum 8

if input is a string: return 0
if input is a negative number: return 0


Output:
number (integer)
sum of multiples between 1 and input number

##Examples

multisum(0) == 0
multisum(-1) == 0
multisum('4') == 3
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168


##Algorithm

num.to_i
if number < 0 return 0
(1..number) to array
select of multiples of 3 and 5 from array
  criteria: number % 3 == 0 || number % 5 == 0
reduce (:+)
return result
