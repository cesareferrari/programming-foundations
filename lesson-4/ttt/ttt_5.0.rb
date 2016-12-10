require 'pry'

MAX_SCORE = 3
score = { player: 0, computer: 0 }

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # cols
                [[1, 5, 9], [3, 5, 7]]               # diagonals

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

def prompt(msg)
  puts "==> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "Your're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, separator = ', ', word = 'or')
  case array.size
  when 0, 1
    array.join
  when 2
    array.join(" #{word} ")
  else
    last_element = array.pop.to_s
    array.join(separator) << last_element.prepend("#{separator}#{word} ")
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def threat_line?(brd, line)
  brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
  brd.values_at(*line).count(INITIAL_MARKER) == 1
end

def opportunity_line?(brd, line)
  brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
  brd.values_at(*line).count(INITIAL_MARKER) == 1
end

def threat_square(brd)
  WINNING_LINES.each do |line|
    if threat_line?(brd, line)
      line.each { |square| return square if brd[square] == INITIAL_MARKER }
    end
  end
  nil
end

def opportunity_square(brd)
  WINNING_LINES.each do |line|
    if opportunity_line?(brd, line)
      line.each { |square| return square if brd[square] == INITIAL_MARKER }
    end
  end
  nil
end

def computer_places_piece!(brd)
  opportunity_sqr = opportunity_square(brd)
  threat_sqr = threat_square(brd)

  case
  when opportunity_sqr then square = opportunity_sqr
  when threat_sqr then square = threat_sqr
  when empty_squares(brd).include?(5) then square = 5
  else
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def assign_points_to_winner(brd, score)
  if detect_winner(brd) == 'Player'
    score[:player] += 1
  elsif detect_winner(brd) == 'Computer'
    score[:computer] += 1
  end
end

def final_winner?(score)
  if score[:player] == MAX_SCORE
    prompt "Player wins the game"
    true
  elsif score[:computer] == MAX_SCORE
    prompt "Computer wins the game"
    true
  end
end

loop do
  board = initialize_board

  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    # binding.pry

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  assign_points_to_winner(board, score)

  display_board(board)
  puts "Player score: #{score[:player]}"
  puts "Computer score: #{score[:computer]}"

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie."
  end

  break if final_winner?(score)

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Good bye!"
