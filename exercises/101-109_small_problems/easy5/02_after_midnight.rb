def time_of_day(min)
  min = 1440 - min.abs if min < 0

  hh, mm = min.divmod(60)
  _, hh = hh.divmod(24)

  hh = 0 if hh == 24

  format('%02d:%02d', hh, mm)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
