flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}
flintstones.each do |w|
  hash[w] = flintstones.index(w)
end

puts hash

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

puts flintstones_hash
