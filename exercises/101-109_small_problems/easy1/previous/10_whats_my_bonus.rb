def calculate_bonus(salary, add_bonus)
  return salary / 2 if add_bonus
  0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
