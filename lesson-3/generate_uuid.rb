# Each UUID consists of 32 hexadecimal characters, and is typically broken into
# 5 sections like this 8-4-4-4-12 and represented as a string.
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# 10.to_s(16)

def generate_uuid
  characters = []
  (0..15).each { |n| characters << n.to_s(16) }

  sections = [8, 4, 4, 4, 12]

  uuid = []

  sections.each_with_index do |section, index|
    section.times { uuid << characters.sample }
    uuid << '-' unless index == sections.length - 1
  end

  uuid.join
end

p generate_uuid
p generate_uuid
