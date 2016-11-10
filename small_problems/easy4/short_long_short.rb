#Write a method that takes two strings as arguments, determines the longest of
#the two strings, and then returns the result of concatenating the shorter
#string, the longer string, and the shorter string once again. You may assume
#that the strings are of different lengths.
#
#
#- method takes 2 arguments of type strings
#- input 2 different size strings
#- input can be empty string
#
#if no string is empty return
#  - determine longest of 2 strings
#  - return concatenation of short-long-short
#
#
#Examples:
#
#short_long_short('abc', 'defgh') == "abcdefghabc"
#short_long_short('abcde', 'fgh') == "fghabcdefgh"
#short_long_short('', 'xyz') == "xyz"
#

def short_long_short(string1, string2)
  if string1.length > string2.length
    [string2, string1, string2].join
  else
    [string1, string2, string1].join
  end
end


puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
