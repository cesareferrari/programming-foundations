# If the number of minutes is positive, the time is after midnight. If the
# number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and
# return the number of minutes before and after midnight, respectively. Both
# methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# After midnight '12:34' == 754

# 12 * 60 + 34

def after_midnight(time_of_day)
  times = time_of_day.split(':')
  minutes = times[0].to_i * 60 + times[1].to_i
  (minutes == 1440) ? 0 : minutes
end

def before_midnight(time_of_day)
  times = time_of_day.split(':')
  minutes = (1440 - times[0].to_i * 60) - times[1].to_i
  (minutes == 1440) ? 0 : minutes
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
