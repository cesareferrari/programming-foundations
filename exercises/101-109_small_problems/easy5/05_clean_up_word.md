Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

Input:
  string
  words, spaces, non-word characters

Output:
  string
  words, spaces
  non consecutive spaces

Rules:
  substitute non-word chars with spaces
  substitute multiple spaces with one space

Data structure:
  string (regex)


Examples:

cleanup("---what's my +*& line?") == ' what s my line '

Algorithm:
regex = [-'+*&?]
substitute regex for spaces
substitute 1 or more spaces with 1 space

