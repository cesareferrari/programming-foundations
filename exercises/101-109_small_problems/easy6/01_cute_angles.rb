# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes, and seconds. You should use a degree symbol (˚) to
# represent degrees, a single quote (') to represent minutes, and a double
# quote (") to represent seconds. There are 60 minutes in a degree, and 60
# seconds in a minute.

# input:
#   float
#   0.00 - 360.00
#
# output:
#   String
#   degrees°minutes'seconds"
#
# minutes = degrees / 60
# seconds = minutes / 60
#
# 76.73 - 76 = .73
# 0.73 * 60 = 43.8
# 0.8 * 60 = 48.0
#
# float = 76.73
# degree = float.to_i
# remainder = float - degree
# float_minutes = remainder * 60
# minutes = float_minutes.to_i
# float_seconds = float_minutes - minutes
# seconds = float_seconds * 60

seconds = 5
format('%02d', seconds)

def dms(float)
  degrees = float.to_i
  remainder = float - degrees
  float_minutes = remainder * 60
  minutes = float_minutes.to_i
  float_seconds = float_minutes - minutes
  seconds = (float_seconds * 60).to_i

  %Q(#{degrees}°#{format('%02d', minutes)}'#{format('%02d', seconds)}")
end


puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
