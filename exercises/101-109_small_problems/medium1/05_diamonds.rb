# first iteration: it works...but
#
# def puts_stars(num, counter)
#   stars = num - counter
#   puts (CHAR * stars).center(num)
# end
#
# def diamonds(num)
#   return puts CHAR if num <= 1
#
#   counter = num - 1
#
#   loop do
#     puts_stars(num, counter)
#     counter -= 2
#     break if counter < 0
#   end
#
#   counter += 4
#
#   loop do
#     puts_stars(num, counter)
#     counter += 2
#     break if counter > num
#   end
# end

CHAR = '*'

# finds all CHARs except first and last
REGEX = /(?<=#{Regexp.quote(CHAR)})#{Regexp.quote(CHAR)}(?=#{Regexp.quote(CHAR)})/

def diamonds(num)
  1.step(num, 2) {|n| puts (CHAR * n).center(num)}
  (num - 2).step(0, -2) {|n| puts (CHAR * n).center(num)}
end

def hollow_diamonds(num)
  1.step(num, 2) {|n| puts ((CHAR * n).gsub(REGEX, ' ')).center(num)}
  (num - 2).step(0, -2) {|n| puts ((CHAR * n).gsub(REGEX, ' ')).center(num)}
end

diamonds(9)
diamonds(5)
diamonds(3)
diamonds(1)

hollow_diamonds(9)
hollow_diamonds(5)
hollow_diamonds(3)
hollow_diamonds(1)

