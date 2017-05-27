Write a method that takes a String as an argument, and returns a new
String that contains the original value using a staggered capitalization
scheme in which every other character is capitalized, and the remaining
characters are lowercase. Characters that are not letters should not be
changed, but count as characters when switching between upper and
lowercase.

Input: string
Output: new string

Rules:
every second character is capitalized regardless of spaces
first character needs capitalized

Lowercase everything
preserve spaces
capitalize every odd character (every even character 0 based)

if character index is even, capitalize the character

Data structure:
array

Algorithm:
downcase all letters
convert string to array
map with upcase if index is even
join



Example:

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

