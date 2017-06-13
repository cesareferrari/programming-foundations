GRADES = { 90..100 => 'A', 80..89 => 'B', 70..79 => 'C', 60..69 => 'D', 0..59 => 'F'}

# def get_grade(arg1, arg2, arg3)
#   average = (arg1 + arg2 + arg3) / 3
#
#   GRADES.keys.each do |range|
#     if range.include? average
#       return GRADES[range]
#     end
#   end
# end

def get_grade(*args)
  average = args.reduce(:+) / 3
  GRADES.keys.each { |range| return GRADES[range] if range.include? average }
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
