# Consider a character set consisting of letters, a space, and a point. Words
# consist of one or more, but at most 20 letters.
#
# An input text consists of one
# or more words separated from each other by one or more spaces and
#
#   terminated by 0 or more spaces followed by a point.
#
#   Input should be read from, and including,
#   the first letter of the first word, up to and including the terminating
# point.
#
#   The output text is to be produced such that successive words are
# separated by a single space witht the last word being terminate by a single
# point. Odd words are copied in reverse order while even words are merely
# echoed.
#
#   For example, the imput string
# whats the matter with kansas.
#
#   becomes
# whats eht matter htiw kansas.
#

# UNDERSTANDING THE PROBLEM

# odd (zero based): reverse order  (word 1 3 5 7 ...)
# even (zero based): straight order  (word 2 4 6 ...)

# words = %w(whats the matter with kansas.)
# words[0] = straight order
# words[1] = reversed
# words[2] = straight
# words[3] = reversed

# TRY IT

#   take string,
#   remove dot at the end
#   remove possible spaces at the end
#   convert into array of words
#   map to another array and 
  #   reverse the odd word
#    if word index even?
#
#
#   add dot at the end
#   output

def massage_string(string)
  output = []

  str = string.chop.strip

  words = str.split(' ')

  words.each_with_index do |word, index|
    if index.odd?
      output << word.reverse
    else
      output << word
    end
  end

  return output.join if output.empty?

  output.join(' ') + '.'
end


# Test cases
puts massage_string('') == ''
puts massage_string('whats.') == 'whats.'
puts massage_string('whats the.') == 'whats eht.'
puts massage_string('whats the matter with kansas.') == 'whats eht matter htiw kansas.'
puts massage_string('whats the matter with kansas  .') == 'whats eht matter htiw kansas.'
