735291
 352917
 3 29175
 3 2 1759
 3 2 1 597
 3 2 1 5 79

number = 735291
numbers = number.to_s.chars
# numbers == %w(7 3 5 2 9 1)

rotated_list = numbers[1..-1] + [numbers[0]]
rotated_list[2..-1] + rotated_list[0..1]


---
nums = %w(1 2 3 4)
nums + ['5']
nums + ['5', '6']
