def multiple_of(number, multiple)
  (number % multiple).zero?
end

def toggle(light)
  light == 'on' ? 'off' : 'on'
end

# initialize lights
lights = {}
(1..1000).each { |n| lights[n] = 'on' }

counter = 2

loop do
  break if counter > lights.keys.size

  lights.each_key do |number|
    lights[number] = toggle(lights[number]) if multiple_of(number, counter)
  end

  counter += 1
end

on_lights = lights.select { |_, value| value == 'on' }.keys

puts "Lights on are: #{on_lights.join(', ')}"
