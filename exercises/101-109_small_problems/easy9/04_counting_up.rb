def sequence(int)
  result = []

  if int > 0
    1.upto(int) { |n| result << n }
  else
    1.downto(int) { |n| result << n }
  end

  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5) == [1, 0, -1, -2, -3, -4, -5]
