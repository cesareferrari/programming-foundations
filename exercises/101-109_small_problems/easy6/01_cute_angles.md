Write a method that takes a floating point number that represents an
angle between 0 and 360 degrees and returns a String that represents
that angle in degrees, minutes, and seconds. You should use a degree
symbol (˚) to represent degrees, a single quote (') to represent
minutes, and a double quote (") to represent seconds. There are 60
minutes in a degree, and 60 seconds in a minute.



Input: float, between 0-360

Output: string: 30°00'00"

Rules:
  1 degree = 60 minutes
  1 minute = 60 seconds

  minutes_per_degree = 60
  seconds_per_minute = 60
  seconds_per_degree = minutes_per_degree * seconds_per_minute

  degree = float.to_i
  minutes = ((float - degree) * 60).to_i
  seconds = (((float - degree) * 60) % 60).to_i


Examples:

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
