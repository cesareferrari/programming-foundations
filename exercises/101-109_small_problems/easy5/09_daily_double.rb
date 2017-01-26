# PROBLEM STATEMENT

# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character.


# FIRST TRY
#
# find
# consecutive duplicate characters

# string collection of characters

# string.chars

# string = 'ddaaiillyy'
# characters = string.chars
# output = characters.shift # => d
# daaiillyy
# characters.shift
# if this is same as previous one
#   eliminate it
# else
#   add to output
# end

# %w(d d a a i i l l y y)


# Take string
# convert into characters collection
# shift first character and put it into output variable
# shift next character
# if it's the same as output.last
#   don't add to output
# else
#   add to output
# end

def crunch(string)
  output = ''

  chars = string.chars
  output = chars.shift unless chars.empty?

  loop do
    break if chars.empty?

    next_char = chars.shift
    if next_char == output[-1]
      next
    else
      output << next_char
    end
  end

  output
end

# SECOND TRY (still doesn't work)

# method in array that removes duplicates

# array.delete_if { |element| element with previous index == current element }
# reject

def crunch(string)
  chars = string.chars

  output = chars.delete_if do |char|
    chars[chars.index(char) - 1] == char
  end

  output
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''



# NEXT ACTIONS / STUDY MORE ABOUT
# -------------------------------

# loop: next keyword. It seems to be working as I expect in my method but see if I can get more information on how 'next' works in a loop


# In the second method I am trying out chars.delete_if
# It's not returning what I thought.
# Investigate why
