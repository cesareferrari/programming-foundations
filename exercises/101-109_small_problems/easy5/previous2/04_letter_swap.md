Letter Swap

Given a string of words separated by spaces, write a method that takes
this string of words and returns a string in which the first and last
letters of every word is swapped.

You may assume that every word contains at least one letter, and that
the string will always contain at least one word. You may also assume
that each string contains nothing but words and spaces



Input:
  string of words and spaces (no other chars)
  words separated by spaces
  each word contains at least 1 letter
  string has at least 1 word (no empty string)

Output:
  string
  same string as input

Rules:
  first and last letter of each word is swapped (what -> thaw)
  preserve upper/lower case

Data structure:
    array of strings

Examples:
  swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
  swap('Abcde') == 'ebcdA'
  swap('a') == 'a'

Algorithm:
  convert input string into array of words
  map into output array and swap letters
  return output array, join with space

Swap letters:
  Input: string
  Output: string with swapped letters

    string[0], string[-1] = string[-1], string[0]

