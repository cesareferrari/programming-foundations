# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

# Input: string1, string2
# 
# - compare 2 strings by length
# 
# if (string1.length <=> string2.length) == -1
#   string1 + string2 + string1
# else
#   string2 + string1 + string2
# end
# 
# # 1, -1, 0
# 
# 
# Output: short + long + short

def short_long_short(string1, string2)
  if (string1.length <=> string2.length) == -1
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
