# figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.select { |name, details| details['gender'] == 'male' }.values.reduce(0) {|sum, detail| sum + detail['age']}


total_age = 0
munsters.select do |name, details|
  total_age += details['age'] if details['gender'] == 'male'
end
total_age
