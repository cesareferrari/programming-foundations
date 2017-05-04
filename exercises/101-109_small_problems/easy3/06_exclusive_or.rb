# both elements are true
# both elements are false
#   -> return false
# 
# one element is true
#   -> return true
# 


def xor?(arg1, arg2)
  if (arg1 == true && arg2 == true) || (arg1 == false && arg2 == false)
    false
  else
    true
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
