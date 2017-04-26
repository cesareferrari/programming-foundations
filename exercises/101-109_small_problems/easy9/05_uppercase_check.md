Write a method that takes a string argument, and returns true if all of
the alphabetic characters inside the string are uppercase, false
otherwise. Characters that are not alphabetic should be ignored.

Input: string
Output: true or false (boolean)

Rules:

  All alpha chars in string are uppercase
    -> true

  otherwise
    -> false

  Ignore non-alpha chars


Data Structure: array

Algorithm:

string convert to array

array.all? {|char| char.upcase == char}




Examples:

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
