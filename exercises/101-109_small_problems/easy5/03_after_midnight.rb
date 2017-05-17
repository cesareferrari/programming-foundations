# def operation(num1, num2, operator)
#   num1.send(operator, num2)
# end

# operation(10, 5, :+) # -> 15
# operation(10, 5, :-) # -> 5

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def calculate_minutes(hours, min, operator)
  hours == 0 ? min : (MINUTES_PER_DAY - (hours * MINUTES_PER_HOUR).send(operator, min))
end

def after_midnight(time)
  hours, min = time.split(':').map(&:to_i)
  calculate_minutes(hours, min, :-)
end

def before_midnight(time)
  hours, min = time.split(':').map(&:to_i)
  calculate_minutes(hours, min, :+)
end


puts after_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts after_midnight('24:00') == 0
puts before_midnight('00:00') == 0
puts before_midnight('12:34') == 686
puts before_midnight('24:00') == 0
