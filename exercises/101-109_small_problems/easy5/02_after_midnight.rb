# Write a method that takes a time using this minute-based format:
# number of minutes before or after midnight
#
# 0 (midnight)
# -3 (midnight minus 3 minutes = '23:57')
# 35 (midnight plus 35 minutes = '00:35')
#
# and returns the time of day in 24 hour format (hh:mm). Your method should
# work with any integer input.
#
# You may not use ruby's Date and Time classes.
#
# format("%02d", 3)

def time_of_day(min)
  hours, minutes = min.divmod(60)
  hours = hours.divmod(24).last
  "#{format('%02d', hours)}:#{format('%02d', minutes)}"
end


puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
