# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Note: your results may differ slightly depending on how you round values, but
# should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the
# minutes and seconds, e.g., 321°03'07".
#
# You may use this constant to represent the degree symbol:
#
# DEGREE = "\x00\xB0"


# input : float, between 0.0 and 360.00
# outpt : string  76°43'48"
# 
# degree has 60 minutes
# minute has 60 seconds
# 
# isolate the degrees
#   93.034773  -> 93 degrees
#   num.divmod(1)
# 
# find minutes by multiplying the remainder by 60
# 0.034773 * 60  -> 2.08638  -> 2 minutes
# 0       * 60  -> 0        -> 0 minutes
# 
# find seconds by multiplying the remainder by 60
# .08638 * 60 -> 5.1828  -> 5 seconds
# 0      * 60 -> 0       -> 0 seconds


# DEGREE = "\x00\xB0"
# 
def dms(num)
  deg, min = num.divmod(1)
  min, sec = (min * 60).divmod(1)
  _, sec = (sec.round * 60).divmod(1)

  "#{format('%02d', deg)}D#{format('%02d', min)}'#{format('%02d', sec)}\""
end

# DEGREE = "\x00\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
# 
# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end



puts dms(30) # == %(30°00'00")
puts dms(76.73) # == %(76°43'48")
puts dms(254.6) # == %(254°36'00")
puts dms(93.034773) # == %(93°02'05")
puts dms(0) # == %(0°00'00")
puts dms(360) # == %(360°00'00") || dms(360) == %(0°00'00")


