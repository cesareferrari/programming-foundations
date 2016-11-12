flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

person = flintstones.find { |e| e.start_with?('Be') }
flintstones.index(person)

flintstones.index { |e| e.start_with?('Be') }

flintstones.index { |name| name[0, 2] == 'Be' }
