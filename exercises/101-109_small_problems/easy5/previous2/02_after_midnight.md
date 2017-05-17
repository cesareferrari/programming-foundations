The time of day can be represented as the number of minutes before or
after midnight. If the number of minutes is positive, the time is after
midnight. If the number of minutes is negative, the time is before
midnight.

Write a method that takes a time using this minute-based format and
returns the time of day in 24 hour format (hh:mm). Your method should
work with any integer input.
You may not use ruby's Date and Time classes.


Input:
  positive or negative integer

Rules:
  input represents minutes
  if positive integer: after midnight
  if negative integer: before midnight


  if input is a negative integer:
    1440 - input
    use the result for divmod calculation
    Example: 1440 - 1437 = 3
    3.divmod(60)  -> [0, 3]

What we should get
   60 -> 01:00
   35 -> 00:35
  120 -> 02:00
  150 -> 02:30

  150.divmod(60)
    [2, 30]

  if hour == 24
    then hour = 0

  format output with %
  "%02d" % hours
  "%02d" % minutes

  1440 == midnight


Output:
  Time of day in 24 hour format: 02:00


Examples:

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"


Algorithm:

if minutes < 0
  minutes = 1440 - minutes

hh, mm = minutes.divmod(60)

if hh == 24
  hh = 0

"#{format('%02d', hh)}:#{format('%02d', mm)}"
