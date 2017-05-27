LETTERS = {
  'a' => 'A',
  'b' => 'B',
  'c' => 'C',
  'd' => 'D',
  'e' => 'E',
  'f' => 'F',
  'g' => 'G',
  'h' => 'H',
  'i' => 'I',
  'j' => 'J',
  'k' => 'K',
  'l' => 'L',
  'm' => 'M',
  'n' => 'N',
  'o' => 'O',
  'p' => 'P',
  'q' => 'Q',
  'r' => 'R',
  's' => 'S',
  't' => 'T',
  'u' => 'U',
  'v' => 'V',
  'w' => 'W',
  'x' => 'X',
  'y' => 'Y',
  'z' => 'Z'
}

def swapcase(string)
  swapped = string.chars.map do |letter|
              if LETTERS[letter]
                LETTERS[letter]
              elsif LETTERS.key(letter)
                LETTERS.key(letter)
              else
                letter
              end
            end
  swapped.join
end

def swapcase(string)
  string.chars.map { |letter| letter == letter.downcase ? letter.upcase : letter.downcase}.join
end

puts swapcase('aB cD') == 'Ab Cd'
puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
