Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

Examples:

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

Input: string
Output: array of strings

Rules:
start at char 0
build substring that contains that char
build substring that contains that char + 1
add to array
build substring that contains that char + 2
continue until the end of the string (string length)

Data structures:
array


Algorithm:

initialize result array
initialize counter at 1

loop through the string
  add char at position 0, for counter char to resulting array: string[0, 1]
  increment counter
  exit loop if string.length == counter

return result array
