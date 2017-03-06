Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.


Input: 2 arrays
Output: 1 array

Rules:
  No duplicate elements
  Return new array
  New array has all the values from input arrays


Data structure:
  Array


Example

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


Algorithm:
  initialize return array
  add all elements in the first array

  look at each element in second array
    if element is already present in return array (included)
      skip it
    otherwise add it to the return array

  return array


