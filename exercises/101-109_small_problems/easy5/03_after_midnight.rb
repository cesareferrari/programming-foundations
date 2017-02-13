# Doesn't work yet
#
def after_midnight(time_string)
  times = time_string.split(':')
  #times.first.to_i * 60 + times.last.to_i
  1440.divmod(times.first.to_i * 60 + times.last.to_i)
end

puts after_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts after_midnight('24:00') == 0
