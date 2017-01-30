Write a method that takes a year as input and returns the century. The
return value should be a string that begins with the century number, and
ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000
comprise the 20th century.


Input:
  - number integer (year)

Rules:
  - century begins in year 01
    year    1 ..  100 == century 1
    year 1801 .. 1900 == century 19
    year 1901 .. 2000 == century 20
    year 2001 .. 2100 == century 21

  - suffix
    if number ends with 11 - 12 - 13
      'th'
    if number ends in 1
      'st'
    if number ends in 2
      'nd'
    if number ends in 3
      'rd'
    else
      'th'

Output:
  - string (century)
    - begins with century number
    - ends with st, nd, rd, or th
      1st
      2nd
      3rd
      4th
      5th .. 10th
      11 - 12 - 13 th
      14 .. 20 th
      21st
      22nd
      23rd
      24 .. 30 th
      31st
      32nd
      33rd


Examples:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'


Algorithm:

- find the century number
    if year % 100 == 0
      year / 100
    else
      year / 100 + 1

- find suffix for century number

    convert number to string


    if number.end_with?([11, 12, 13])
      return 'th'

    last_char = number[-1]

    case last_char
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'

- century(year)
  - find_century(year)
  - apply_suffix_to(century)
