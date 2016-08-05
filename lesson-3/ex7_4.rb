require 'securerandom'
include SecureRandom

def generate
  SecureRandom.hex(32)
end

puts generate
puts generate
