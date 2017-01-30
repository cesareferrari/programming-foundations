def find_century_number_for(year)
  (year % 100 == 0) ?  year / 100 : year / 100 + 1
end

def add_suffix_to(century_number)
  century = century_number.to_s

  return century + 'th' if century.end_with?('11', '12', '13')

  case century[-1]
  when '1' then "#{century}st"
  when '2' then "#{century}nd"
  when '3' then "#{century}rd"
  else
    "#{century}th"
  end
end

def century(year)
  century_number = find_century_number_for(year)
  add_suffix_to(century_number)
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
