# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

# Examples:

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# compare strings, find longer
# concatenate short-long-short

def short_long_short(string1, string2)
  result = string1.size <=> string2.size

  case result
  when -1
    short = string1
    long = string2
  when 0
    return 'same size'
  when 1
    short = string2
    long = string1
  end

  short + long + short
end
