munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

male_ages = 0

munsters.each do |name, details|
  male_ages += details['age'] if details['gender'] == 'male'
end

puts male_ages
