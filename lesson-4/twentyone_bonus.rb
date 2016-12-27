SUITS = %w(H D C S).freeze
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze
MAX_POINTS = 3
MAX_VALUE = 21
MAX_DEALER_STAY = 17

round_points = { dealer: 0, player: 0 }

def prompt(msg)
  puts "==> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0

  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i.zero?
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > MAX_VALUE
  end

  sum
end

def busted?(cards)
  total(cards) > MAX_VALUE
end

def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > MAX_VALUE
    :player_busted
  elsif dealer_total > MAX_VALUE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def assign_round_points(dealer_cards, player_cards, round_points)
  case detect_result(dealer_cards, player_cards)
  when :player_busted
    round_points[:dealer] += 1
  when :dealer
    round_points[:dealer] += 1
  when :dealer_busted
    round_points[:player] += 1
  when :player
    round_points[:player] += 1
  else
    round_points
  end
end

def display_final_points(round_points)
  puts "=========="
  prompt "Dealer final points: #{round_points[:dealer]}"
  prompt "Player final points: #{round_points[:player]}"
end

def display_result(dealer_cards, player_cards, total_points)
  result = detect_result(dealer_cards, player_cards)

  compare_cards(dealer_cards, player_cards, total_points)

  case result
  when :player_busted
    prompt "You busted! Dealer wins."
  when :dealer_busted
    prompt "Dealer busted! You win."
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie"
  end
end

def play_again?(round_points)
  return false if max_points_reached?(round_points)

  puts "----------"
  prompt "Do you want to play again? y or n"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def max_points_reached?(round_points)
  round_points[:player] == MAX_POINTS || round_points[:dealer] == MAX_POINTS
end

def update_total_points(total_points, dealer_cards, player_cards)
  total_points[:dealer] = total(dealer_cards)
  total_points[:player] = total(player_cards)
end

def compare_cards(dealer_cards, player_cards, total_points)
  puts "=========="
  prompt "Dealer has #{dealer_cards}, for a total of: #{total_points[:dealer]}"
  prompt "Player has #{player_cards}, for a total of: #{total_points[:player]}"
  puts "=========="
end

loop do
  puts "Welcome to Twenty-one"

  deck = initialize_deck

  dealer_cards = []
  player_cards = []

  total_points = { dealer: 0, player: 0 }

  # first dealing
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
    update_total_points(total_points, dealer_cards, player_cards)
  end

  puts "The dealer has a #{dealer_cards[0]} and ?"
  puts "The player has a #{player_cards[0]} and a #{player_cards[1]} for a total of #{total_points[:player]}"

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp
      break if %w(h s).include?(player_turn)
      prompt "Please, enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      update_total_points(total_points, dealer_cards, player_cards)
      prompt "You chose to hit"
      prompt "Your cards are now #{player_cards}"
      prompt "Your total is now #{total_points[:player]}"
    end

    break if player_turn == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards, total_points)

    assign_round_points(dealer_cards, player_cards, round_points)
    display_final_points(round_points)
    play_again?(round_points) ? next : break
  else
    prompt "You stayed at #{total_points[:player]}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if busted?(dealer_cards) || total_points[:dealer] >= MAX_DEALER_STAY

    prompt "Dealer hits"
    dealer_cards << deck.pop
    update_total_points(total_points, dealer_cards, player_cards)
    prompt "Dealer cards are now: #{dealer_cards}"
  end

  if busted?(dealer_cards)
    prompt "Dealer total is now #{total_points[:dealer]}"
    assign_round_points(dealer_cards, player_cards, round_points)
    display_result(dealer_cards, player_cards, total_points)
    display_final_points(round_points)
    play_again?(round_points) ? next : break
  else
    prompt "Dealer stays at #{total_points[:dealer]}"
  end

  assign_round_points(dealer_cards, player_cards, round_points)
  display_result(dealer_cards, player_cards, total_points)
  display_final_points(round_points)

  break unless play_again?(round_points)
end

prompt "Thank you for playing Twenty-one. Good Bye."
