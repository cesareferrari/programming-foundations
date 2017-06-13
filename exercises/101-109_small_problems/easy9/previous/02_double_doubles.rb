def double_number?(num)
  digits = num.to_s.chars

  return false if digits.size.odd?

  left, right = digits.each_slice(digits.size / 2).to_a
  left == right ? true : false
end

def twice(num)
  double_number?(num) ? num : num * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334_433) == 668_866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103_103) == 103_103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
