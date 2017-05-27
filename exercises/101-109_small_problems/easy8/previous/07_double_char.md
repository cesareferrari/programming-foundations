Write a method that takes a string, and returns a new string in which
every character is doubled.


Input: string
Output: string (new string)

Rules:
  every char is output twice

Data Structure: array

Examples:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

Algorithm:

convert string to array of characters
map the characters to char * 2
convert back to string
