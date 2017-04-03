arr = ['10', '11', '9', '7', '8']
arr.map {|num| num.to_i}.sort {|a, b| b <=> a }

arr.sort { |a, b| b.to_i <=> a.to_i }
