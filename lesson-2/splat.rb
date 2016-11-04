def splat(first, *args)
  p first
  p args
end

splat('first argument')
splat('first argument', 'second', 'third')

format("This is a %s and this is a %s.", 'tiger', 'lion')
format("This is a %s and this is a %s.", ['tiger', 'lion'])

def prompt(message, *args)
  puts "==> #{format(message, *args)}"
end

prompt("This is an animal")
prompt("This is a %s and this is a %s.", 'tiger', 'lion')
