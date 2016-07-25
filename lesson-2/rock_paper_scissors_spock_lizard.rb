MAX_SCORE = 5

VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'k' => 'spock',
  'l' => 'lizard'
}

# rock wins over scissors and lizard;
# lizard wins over spock and paper; and so on...
RULES = {
  'rock'     => %w(scissors lizard),
  'lizard'   => %w(spock paper),
  'spock'    => %w(scissors rock),
  'scissors' => %w(lizard paper),
  'paper'    => %w(rock spock)
}

score = { player: 0, computer: 0 }

def prompt(message)
  puts "=> #{message}"
end

def display_choices
  choices = []
  VALID_CHOICES.each do |initial, choice|
    choices << ["=> #{initial}: #{choice}"]
  end
  choices.push(["=> [press 'Q' to quit]"])
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

def win?(first, second)
  true if RULES[first].include? second
end

def add_score(player, computer, score)
  if win?(player, computer)
    score[:player] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  else
    # tie, add 1 to each
    score[:player] += 1
    score[:computer] += 1
  end
end

def end_game?(score)
  score[:player] == MAX_SCORE || score[:computer] == MAX_SCORE
end

prompt "Welcome to Rock, Paper, Scissors, Spock, Lizard"
prompt "First player that reaches #{MAX_SCORE} points wins!"

loop do
  player_choice = ''
  loop do
    prompt('Choose one:')

    display_choices.each do |choice|
      puts choice
    end

    player_choice = gets.chomp.downcase

    break if player_choice == 'q'

    if VALID_CHOICES.keys.include?(player_choice)
      player_choice = VALID_CHOICES[player_choice]
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  break if player_choice == 'q'

  computer_choice = VALID_CHOICES.values.sample

  prompt "You chose: #{player_choice}; Computer chose: #{computer_choice}"

  message = display_results(player_choice, computer_choice)
  prompt message

  add_score(player_choice, computer_choice, score)

  prompt "Your score: #{score[:player]}, Computer score: #{score[:computer]}"

  if end_game?(score)
    if score[:player] == MAX_SCORE
      prompt "Congratulations, you win the match!"
    else
      prompt "Computer wins the match!"
    end

    break
  end

  prompt("Do you want to play again? (Y/N)")
  answer = gets.chomp.downcase

  break unless answer.start_with?('y')
end

prompt "Thank you for playing. Good Bye."
