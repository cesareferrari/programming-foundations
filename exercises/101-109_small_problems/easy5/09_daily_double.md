Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

Input: string

Output: string

Rules:
consecutive duplicates collapsed into single character

Examples:

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Data structure:
array

Algorithm:
convert the string to array of characters
initialize result array by shifting the input array

for each remaining character
  compare char to last char in result
  if result.last == array.first
    skip it (array.shift)
  else
    array.shift and add to the result array

return result.join


