Write a method that determines the mean (average) of the three scores
passed to it, and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'

Tested values are all between 0 and 100. There is no need to check for
negative values or values greater than 100.

Example:

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"


Input: 3 numbers (0-100)
Output: Letter string

Rules:

  average of 3 arguments
  average: (95 + 90 + 93) / 3

Map:

90..100 => 'A'
80..89 => 'B'
70..79 => 'C'
60..69 => 'D'
0..59 => 'F'

Algorithm:

GRADES = { 90..100 => 'A', 80..89 => 'B', 70..79 => 'C', 60..69 => 'D', 0..59 => 'F'}

  average = (arg1 + arg2 + arg3) / 3

GRADES.keys.each do |range|
  if range.include? average
    GRADES[range]

