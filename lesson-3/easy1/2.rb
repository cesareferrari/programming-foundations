# Describe the difference between ! and ? in Ruby.
# And explain what would happen in the following scenarios:

# what is != and where should you use it?
# != means not equal. It can be used in an expression like:

puts(1 != 2)  # => true

# put ! before something, like !user_name

if !user_name
  puts 'Not registered'
else
  puts "Welcome #{user_name}"
end

# put ! after something, like words.uniq!

animals = %w(elk bunny porcupine elk deer cat)
animals.uniq!  #=> ["elk", "bunny", "porcupine", "deer", "cat"]

# put ? before something

user_name ? "Welcome, #{username}" : "Not registered"

# put ? after something
%w(elk bunny porcupine deer cat).include?('elk') #=> true

# put !! before something, like !!user_name
user_name = 'cesare'
!!user_name  #=> true

