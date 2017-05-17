Write two methods that each take a time of day in 24 hour format, and
return the number of minutes before and after midnight, respectively.
Both methods should return a value in the range 0..1439.


Input: string like '00:00' (hours:minutes)


sum of minutes in hours + minutes
12:34 = 12 hours * minutes per hour + minutes

Output: integer representing minutes before/after midnight

Examples:
after_midnight('00:00') == 0
after_midnight('12:34') == 754
after_midnight('24:00') == 0

before_midnight('00:00') == 0
before_midnight('12:34') == 686
before_midnight('24:00') == 0



Algorithm

string = '12:34'
split string into array

find total minutes by multiplying first array element by 60 and add last
element of array

