Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.


Input: array
Output: 2 arrays:
          first half
          second half

Rules:
  Output is original array divided into 2 halves
  if original array has odd number of elements, the first half has one
  extra element.

array = [1, 2, 3, 4, 5]
half, remainder = array.size.divmod(2)
first_array_index = half + remainder - 1
second_array = half
first_array_index + 1 .. -1

array.slice(0..2)


Algorithm:
halfpoint, remainder = array.size.divmod(2)
first_half = halfpoint + remainder -1

first_slice = 0..first_half
second_slice = (first_half + 1)..-1

first = array.slice(first_slice)
second = array.slice(second_slice)

[first, second]



Examples:

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]



