A double number is a number with an even number of digits whose
left-side digits are exactly the same as its right-side digits. For
example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and
107 are not.

Write a method that returns 2 times the number provided as an argument,
unless the argument is a double number; double numbers should be
returned as-is.

Input: integer
Output: integer

Rules:
  return * 2
    37 -> 74

  if argument is double number?
    return as is

We need something that checks if the argument is a double number

if double_number?
  return number
else
  return number * 2

How do we check if a number is double number?
  convert the number to string

  - even number of digits
    '44'.size % 2 == 0

  - left side digits are same as right side digits
    left, right = chars.each_slice(chars.size / 2).to_a
    left <=> right  returns 0

Algorithm:

  if double_number?(num)
    return num
  else
    return num * 2


double_number?(num)
    if num.to_s.size % 2 == 0

      left, right = chars.each_slice(chars.size / 2).to_a
        true if left <=> right == 0




Examples:

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
