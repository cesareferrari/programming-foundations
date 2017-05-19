def triangle(number)
  1.upto(number) { |n| puts ("*" * n).rjust(number) }
end

triangle(5)
triangle(9)
