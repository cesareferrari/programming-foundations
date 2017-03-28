Write a method that takes two Array arguments in which each Array
contains a list of numbers, and returns a new Array that contains the
product of every pair of numbers that can be formed between the elements
of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Input: 2 arrays (numbers, could be different size)
Output: 1 array

Rule:
  each number in the first array: multiply by each number in the second array
  arrange by ascending order

Algorithm:
  initialize output array

  iterate through first array
    iterate through second array
      multiply current number (from first array) to current number in second array
      add result to output array

  sort output array

Examples:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

