Write a method that takes a number as an argument. If the argument is a
positive number, return the negative of that number. If the number is 0
or negative, return the original number.

Input: number (positive or negative)
Output: negative number or zero

Rules:
if input is less or equal zero
  return same number

else
  return negative of number


Algorithm:

if num <= 0
 num
else
 -num


Examples;

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
