numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# 1 2 2 3 because uniq doesn't mutate the caller (uniq! does).
