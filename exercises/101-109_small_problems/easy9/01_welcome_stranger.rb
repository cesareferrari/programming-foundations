def greetings(name_elements, occupation_elements)
  name = name_elements.join(' ')
  occupation = occupation_elements[:title] + ' ' + occupation_elements[:occupation]
  "Hello, #{name}! Nice to have a #{occupation} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."
