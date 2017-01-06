# Initialize deck
# Deal cards to player and dealer
# Player turn: hit or stay
#   - repeat until bust or stay
# If player bust: dealer wins
# Dealer turn: hit or stay
#   - repeat until total >= 17
# If dealer bust: player wins
# Compare cards and declare winner

# Hearts, Diamonds, Clubs, Spades
# Values: 2, 3 ... 10, J, Q, K, A
# deck = [['C', '9'], ['D', 'J'], ['S', 'A']]
#
# A = 11
# J, Q, K = 10
# 2..10 = its own value

suits = %w(H D C S)
values = %w(2 3 4 5 6 7 8 9 10 J Q K A)

player_cards = []
dealer_cards = []

def initialize_deck(suits, values)
  suits.product(values).shuffle
end

# [["S", "K"], ["H", "5"]]
# [["S", "Q"], ["H", "10"]]
# [["S", "4"], ["H", "A"]]
# 2, an ace, and a 5, then the total value of the hand is 18
# [["S", "2"], ["H", "A"], ["H", "5"]]
# [["S", "2"], ["H", "A"], ["H", "5"], ["D", "A"]] (should be 19)
def total(cards)
  sum = 0

  cards.each do |card|
    if card.last == 'A'
      sum += 11
    elsif %w(J Q K).include? card.last
      sum += 10
    else
      sum += card.last.to_i
    end
  end

  number_of_aces = cards.count {|card| card.last == 'A'}
  number_of_aces.times do
    sum -= 10 if sum > 21
  end

  sum
end

deck = initialize_deck(suits, values)

2.times do
  player_cards << deck.pop
  dealer_cards << deck.pop
end


puts "Player has #{player_cards} for a value of #{total(player_cards)}"
puts "Dealer has #{dealer_cards} for a value of #{total(dealer_cards)}"
