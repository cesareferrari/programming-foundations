Write a method that returns the next to last word in the String passed
to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.


Input: string
  at least 2 words
  words: separated by space

Output: string
  next to last word

Rules:
  divide the string into words
  find the next to last word

Data structure:
  string
  array

Algorithm:
  divide string into array of words
  select word at position -2

Examples:

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
