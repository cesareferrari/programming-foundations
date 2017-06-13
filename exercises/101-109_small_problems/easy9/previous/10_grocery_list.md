Write a method which takes a grocery list (array) of fruits with
quantities and converts it into an array of the correct number of each
fruit.

Example:

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas", "bananas"]


Input: array (of arrays)
Output: flat array

Rules:
  for each inner array: repeat the fruit as many times as element [1]

Algorithm:

initialize result array
for each sub array
  add subarray[0] as many times as subarray[1] to result
  sub[1].times do
    result << sub[0]
  end

return result
