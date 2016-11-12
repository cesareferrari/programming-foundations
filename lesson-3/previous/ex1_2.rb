# 1) what is != and where should you use it?

# != means not equal. You should use it to test if an object is not the same
# as another one, for example in an if condition

if 1 != 3
  false
end


# 2) put ! before something, like !user_name

# means negate something. 

if !user_name
  "no user name"
end



# 3) put ! after something, like words.uniq!

# means that the uniq method has some side effect, like, modifies the caller

animals = %w(cat dog bunny cat elk snake)
animals.uniq!  # => ["cat", "dog", "bunny", "elk", "snake"]


# 4) put ? before something

# this would be is a syntax error


# 5) put ? after something

# it's used as a convention for methods that return a true or false value

animals.include?('elk') # => true
animals.include?('bear') # => false


# 6) put !! before something, like !!user_name

# double negation

!!animals  # => true, because !animals is false
!animals   # => false, because animals is true
