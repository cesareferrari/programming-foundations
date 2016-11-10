VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'k' => 'spock'
}

#VALID_CHOICES = %w(rock paper scissors lizard spock).freeze

def valid?(choice)
  VALID_CHOICES.keys.include?(choice)
end

def prompt(message)
  puts "==> #{message}"
end

def choice_prompt
  <<-MSG
  Choose one:
      r - rock
      p - paper
      s - scissors
      l - lizard
      k - spock
  MSG
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    'You won!'
  elsif win?(computer, player)
    'Computer won!'
  else
    "It's a tie"
  end
end

loop do
  choice = ''
  loop do
    prompt(choice_prompt)
    choice = gets.chomp

    break if valid?(choice)

    prompt("That's not a valid choice")
  end

  player_choice = VALID_CHOICES[choice]
  computer_choice = VALID_CHOICES.values.sample

  puts "You chose #{player_choice}, computer chose #{computer_choice}"

  results = display_results(player_choice, computer_choice)
  prompt(results)

  prompt('Do you want to play again? (Y/N)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good bye.')
