def century_for(year)
  (year % 100 == 0) ? (year / 100).to_s : (year / 100 + 1).to_s
end

def ending_for(century = '')
  if century.end_with?('11', '12', '13')
    century + 'th'
  else
    case century[-1]
    when '1' then century + 'st'
    when '2' then century + 'nd'
    when '3' then century + 'rd'
    else century + 'th'
    end
  end
end

def century(year)
  century = century_for(year)
  ending_for(century)
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
