name = 'Elizabeth'
puts "Hello, #{name}!"

greeting = 'Hello, !'
puts greeting.insert(-2, name)

greeting = 'Hello, !'
puts greeting.insert(greeting.index('!'), name)
