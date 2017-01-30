# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with st,
# nd, rd, or th as appropriate for that number.
#
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.
#
# Examples:
#
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# 1 st
# 2 nd
# 3 rd
# 4..0 th
#
# 11 th
# 12 th
# 13 th

def what_century_for(year)
  year.to_s.end_with?('0') ? (year / 100).to_s : (year / 100 + 1).to_s
end

def century(year)
  century = what_century_for year

  return century + 'th' if century.end_with?('11', '12', '13')

  case century.chars.last
  when '1' then century + 'st'
  when '2' then century + 'nd'
  when '3' then century + 'rd'
  else century + 'th'
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
