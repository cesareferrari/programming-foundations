VALID_CHOICES = {'r' => 'rock', 'p' => 'paper', 'sc' => 'scissors', 'sp' => 'spock', 'l' => 'lizard'}

$player_score = 0
$computer_score = 0

def end_game
  $player_score == 5 || $computer_score == 5
end

def prompt(message)
  puts "=> #{message}"
end

def prompt_choices
  string = ''
  VALID_CHOICES.each do |initial, choice|
    string << "#{initial} (#{choice}), "
  end
  string.gsub(/, $/, '')
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def score(player, computer)
  if win?(player, computer)
    $player_score += 1
  elsif win?(computer, player)
    $computer_score += 1
  end

  "My score: #{$player_score}, Computer score: #{$computer_score}"
end

loop do

  choice = ''
  my_choice = ''
  loop do
    prompt("Choose one: #{prompt_choices}")
    choice = gets.chomp

    if VALID_CHOICES.keys.include?(choice)
      my_choice = VALID_CHOICES[choice]
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.values.sample

  prompt "You chose: #{my_choice}; Computer chose: #{computer_choice}"

  message = display_results(my_choice, computer_choice)
  prompt message
  prompt score(my_choice, computer_choice)

  if end_game
    prompt "My final score: #{$player_score}, Computer final score: #{$computer_score}"
    break
  end

  prompt("Do you want to play again?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing. Good Bye."
