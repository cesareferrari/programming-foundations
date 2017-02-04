#Convert a String to a Number!

The String#to_i method converts a string of numeric characters
(including an optional plus or minus sign) to an Integer. 
String#to_int and Integer behave similarly. 
In this exercise, you are going to create your own conversion method.

Write a method that takes a String of digits, and returns the
appropriate number as an integer. You may not use any of the methods
mentioned above.

For now, do not worry about leading + or - signs, nor should you worry
about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in
Ruby, such as String#to_i, Integer(), etc. Your method should do this
the old-fashioned way and calculate the result by analyzing the
characters in the string.


Input:
  string of digits: '1234'

Rules:
  not use to_int or to_i
  assume all chars are numeric: 0..9
  no leading + or - sign
  map characters in a string to a corresponding number


Output:
  integer: 1234


Data model: Hash

NUMBERS = {'0' => 0,
'1' => 1,
'2' => 2,
'3' => 3,
'4' => 4,
'5' => 5,
'6' => 6,
'7' => 7,
'8' => 8,
'9' => 9}

...
%w(0 1 2 3 4 5 6 7 8 9)
indexes: 0 1 2 3 4 5 6 7 8 9
...

Examples:

string_to_integer('4321') == 4321
string_to_integer('570') == 570


Algorithm:

Initialize constant for mapping strings to numbers:

NUMBERS = {'0' => 0,
'1' => 1,
'2' => 2,
'3' => 3,
'4' => 4,
'5' => 5,
'6' => 6,
'7' => 7,
'8' => 8,
'9' => 9}

initialize result = 0

convert string to a collection of characters
  number_strings = string.chars

iterate through the characters collection
  number_strings.each

in the hash find the key that corresponds to the current character
the value would be the corresponding number
  NUMBERS['2'] # => 2

multiply the result by 10 and add the number
  result * 10 + number

return result

result = 0
result = result * 10 + 4
result = result * 10 + 3
result = result * 10 + 2
result = result * 10 + 1

result


