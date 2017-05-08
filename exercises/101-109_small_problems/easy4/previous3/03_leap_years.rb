def evenly_divisible_by?(dividend, divisor)
  (dividend % divisor == 0) ? true : false
end

def leap_year?(year)
  return false if year < 1
  return false if !evenly_divisible_by?(year, 4)
  if evenly_divisible_by?(year, 100)
    return false unless evenly_divisible_by?(year, 400)
  end
  true
end


puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
puts leap_year?(0) == false
puts leap_year?(-1) == false
