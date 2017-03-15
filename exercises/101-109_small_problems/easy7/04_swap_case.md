Write a method that takes a string as an argument and returns a new
string in which every uppercase letter is replaced by its lowercase
version, and every lowercase letter by its uppercase version. All other
characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Input: string
Output: string

Rule:
  map from lowercase letters -> uppercase
  map from uppercase letters -> lowercase

Data structure:
  array for letters

  lookup table
  hash a => A

Algorithm:
  initialize result array
  convert string to array of letters
  iterate through all the letters
  if hash[letter] is found
    add value to result

  if hash.key(letter) is found
    add key to result

  else
    add letter to result (no modification)

  return result

  hash['a'] == 'A'
  hash.key('A') == 'a'



Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


