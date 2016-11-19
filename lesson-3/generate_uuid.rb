def generate_uuid
  hyphen_positions = [8, 13, 18, 23]
  allowed_characters = ('a'..'f').to_a + (0..9).to_a
  uuid = []

  32.times { uuid << allowed_characters.sample.to_s }

  hyphen_positions.each { |position| uuid.insert(position, '-') }

  uuid.join
end

p generate_uuid
p generate_uuid
