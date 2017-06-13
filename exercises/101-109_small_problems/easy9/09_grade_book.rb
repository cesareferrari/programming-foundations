# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

GRADES = { 0..59 => 'F',
           60..69 => 'D',
           70..79 => 'C',
           80..89 => 'B',
           90..100 => 'A' }

def get_grade(score1, score2, score3)
  mean = [score1, score2, score3].reduce(:+) / 3

  GRADES.each do |range, grade|
    return grade if mean.between?(range.first, range.last)
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
