MAX_SCORE = 5

RULES = { 'rock' => %w(scissors lizard),
          'paper' => %w(rock spock),
          'scissors' => %w(paper lizard),
          'lizard' => %w(spock paper),
          'spock' => %w(scissors rock) }

VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'k' => 'spock'
}

CHOICE_PROMPT =
  <<-MSG
Choose one:
    r - rock
    p - paper
    s - scissors
    l - lizard
    k - spock
  MSG

score = { player: 0, computer: 0 }

def max_score_reached(score)
  score[:player] == MAX_SCORE || score[:computer] == MAX_SCORE
end

def reset(score)
  score[:player] = 0
  score[:computer] = 0
end

def valid?(choice)
  VALID_CHOICES.keys.include?(choice)
end

def valid_answer?(answer)
  %w(y n).include? answer[0].downcase
end

def prompt(message)
  puts "==> #{message}"
end

def win?(first, second)
  RULES[first].include? second
end

def display_results(player, computer)
  if win?(player, computer)
    'You won!'
  elsif win?(computer, player)
    'Computer won!'
  else
    "It's a tie."
  end
end

def display_who_wins(player_score, computer_score)
  if player_score == MAX_SCORE && computer_score == MAX_SCORE
    prompt "Nobody wins! You both reached the same score ¯\_(ツ)_/¯"
  elsif player_score == MAX_SCORE
    prompt "You win the game!"
  else
    prompt "Computer wins the game."
  end
end

def increment_score(player, computer, score)
  if win?(player, computer)
    score[:player] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  else
    score[:player] += 1
    score[:computer] += 1
  end
end

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock")

loop do # main loop
  loop do
    choice = ''
    loop do
      prompt(CHOICE_PROMPT)
      choice = gets.chomp.downcase

      break if valid?(choice)

      prompt("That's not a valid choice")
    end

    player_choice = VALID_CHOICES[choice]
    computer_choice = VALID_CHOICES.values.sample

    puts "==> You chose #{player_choice}, Computer chose #{computer_choice}."

    results = display_results(player_choice, computer_choice)
    prompt(results)

    increment_score(player_choice, computer_choice, score)
    puts "==> Your points: #{score[:player]}"
    puts "==> Computer points: #{score[:computer]}"

    break if max_score_reached(score)
  end

  display_who_wins(score[:player], score[:computer])
  reset(score)

  answer = ''
  loop do
    prompt('Do you want to play again? (Y/N)')
    answer = gets.chomp.downcase
    break if valid_answer?(answer)
    prompt("Please, enter 'y' to play or 'n' to leave.")
  end

  break if answer.start_with?('n')
end # end main loop

prompt('Thank you for playing. Good bye.')
