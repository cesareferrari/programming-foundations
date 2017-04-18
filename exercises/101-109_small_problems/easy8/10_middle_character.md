Write a method that takes a non-empty string argument, and returns the
middle character or characters of the argument. If the argument has an
odd length, you should return exactly one character. If the argument has
an even length, you should return exactly two characters.

Input: string (non-empty)
Output: string (1 or 2 chars depending on input string length)

Rules:
if string odd -> 1 char
if string even -> 2 chars

11 / 2 = 5

6 / 2 = 3

Algorithm:

if string.length.odd?
  string[string.length / 2]
else
  string[string.length / 2 - 1, 2]


Examples:

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
