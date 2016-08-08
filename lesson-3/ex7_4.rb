# "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def generate_uuid
  uuid = []
  pool = (0..9).to_a + ('a'..'f').to_a
  section_sizes = [8, 4, 4, 4, 12]

  section_sizes.each do |size|
    size.times { uuid << pool.sample }
    uuid << '-'
  end

  uuid.pop # remove last '-'
  uuid.join # convert to string
end

puts generate_uuid
puts generate_uuid
puts generate_uuid
puts generate_uuid
