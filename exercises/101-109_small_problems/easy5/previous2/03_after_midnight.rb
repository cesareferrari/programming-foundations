MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time_string)
  times = time_string.split(':')
  hours_to_minutes = times.first.to_i * MINUTES_PER_HOUR % MINUTES_PER_DAY
  minutes = times.last.to_i

  hours_to_minutes + minutes
end

puts after_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts after_midnight('24:00') == 0
