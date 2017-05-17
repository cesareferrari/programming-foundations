Write a method that determines and returns the ASCII string value of a
string that is passed in as an argument. The ASCII string value is the
sum of the ASCII values of every character in the string. (You may use
String#ord to determine the ASCII value of a character.)

Input: string

Rules:

Sum of ASCII values of all characters in the string:
  'Hello'
  H - 5
  e - 3
  l ..
  l ..
  o ..

Value 56

- String#ord
  'H'.ord => 72


Output: integer

Examples:

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0


Algorithm:

sum_total = 0
characters = string.chars

for each char
 sum += char.ord

return sum

--

string.chars.map char.ord
reduce
