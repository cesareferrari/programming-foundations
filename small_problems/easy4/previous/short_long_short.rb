# These two methods also work
#
# def short_and_long(str1, str2)
#   if (str1.length <=> str2.length) == -1
#     return str1, str2
#   else
#     return str2, str1
#   end
# end

# def short_long_short(str1, str2)
#   short, long = short_and_long(str1, str2)
#   short + long + short
# end

def compare_lengths(str1, str2)
  str1.length <=> str2.length
end

def short_long_short(str1, str2)
  compare_lengths(str1, str2) < 0 ?  (str1 + str2 + str1) : (str2 + str1 + str2)
end


puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
