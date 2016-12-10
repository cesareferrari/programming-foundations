def ordinalize(num)
  number = num.to_s

  case
  when number.end_with?('11')
    number + 'th'
  when number.end_with?('12')
    number + 'th'
  when number.end_with?('13')
    number + 'th'
  when number.end_with?('1')
    number + 'st'
  when number.end_with?('2')
    number + 'nd'
  when number.end_with?('3')
    number + 'rd'
  else
    number + 'th'
  end
end

def century(year)
  if year.to_s.end_with?('00')
    ordinalize(year / 100)
  else
    ordinalize(year / 100 + 1)
  end
end


puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
