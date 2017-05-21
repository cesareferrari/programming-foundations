def triangle(size)
  1.upto(size) do |n|
    puts(('*' * n).rjust(size))
  end
end

triangle(5)
triangle(7)
