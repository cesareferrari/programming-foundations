def increment(score)
  score[:player] += 1
end

def add_to_string(string)
  string << " some additional text"
end

score = { player: 0, computer: 0 }
string = "Hello world"

p score
increment(score)
p score

p string
add_to_string(string)
p string
