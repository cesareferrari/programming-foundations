Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in
Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method
should do this the old-fashioned way and construct the string by
analyzing and manipulating the number.

Examples

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'


Input: integer (or 0)

Rules:
array[2] '2' has index = 2
array element with index 2 corresponds to string '2'

Isolate the digits
number = 4321
number.divmod(10) returns [432, 1]


Output: string that represent the integer, ex: '4321' for int 4321

Data structure:
Array %w(0 1 2 3 4 5 6 7 8 9)




NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)
number (input)

Algorithm:

number_string = ''

loop until number == 0
  number, digit = number.divmod(10)
  number_string << NUMBERS[digit]

return number_string


