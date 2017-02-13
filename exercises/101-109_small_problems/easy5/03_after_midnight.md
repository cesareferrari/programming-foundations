Write two methods that each take a time of day in 24 hour format, and
return the number of minutes before and after midnight, respectively.
Both methods should return a value in the range 0..1439.


Input: string like '00:00'


Divide the input string into hours and minutes

12:34 = hours 12 - minutes 24

Find how many minutes in the hours
Add all the minutes together

Output: integer



hours 12
minutes 34

12 * 60 = 720
after midnight 720 + 34 = 754

hours * 60 (minutes in an hour) + minutes


before midnight 1440 - 754 = 686



Examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0



Algorithm

string = '12:34'
split string into array

multiply first array element by 60 to get minutes
Add this to last array element

