# def interleave(list1, list2)
#   combined = []
#
#   until list1.empty?
#     combined << list1.shift
#     combined << list2.shift
#   end
#
#   combined
# end

def interleave(list1, list2)
  combined = []
  list1.each_index do |idx|
    combined << list1[idx]
    combined << list2[idx]
  end
  combined
end

list1 = [1, 2, 3]
list2 = ['a', 'b', 'c']
p list1
p list2
p interleave(list1, list2)
p list1
p list2
