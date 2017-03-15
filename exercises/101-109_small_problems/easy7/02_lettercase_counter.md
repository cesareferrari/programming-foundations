Write a method that takes a string, and then returns a hash that
contains 3 entries: one represents the number of characters in the
string that are lowercase letters, one the number of characters that are
uppercase letters, and one the number of characters that are neither.

Input: string (upper - lower- space - numbers - other chars)
Output: hash 3 elements
  lowercase => (all lowercase chars)
  uppercase => (all uppercase chars)
  neither   => (space - numbers - other chars)

Rules:
  Count lowercase
    select all lowercase  char.match(/[a-z]/)
  Count uppercase
    select all uppercase  char.match(/[a-z]/)
  Count other
    select all others  char.match(/[^a-zA-Z]/)

Algorithm:

initialize regexes (constants)
  lowercase regex
  uppercase regex
  other regex

initialize hash (with 0)

assign to hash[lowercase] = string.chars.select lowercase
assign to hash[uppercase] = string.chars.select uppercase
assign to hash[other] = string.chars.select other

return hash


Examples

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


