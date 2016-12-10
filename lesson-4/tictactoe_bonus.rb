MAX_SCORE = 3
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # cols
                [[1, 5, 9], [3, 5, 7]]               # diagonals

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

def choose_who_moves_first
  loop do
    prompt "Who moves first? Press 'p' for player or 'c' for computer"
    answer = gets.chomp.downcase
    if answer == 'p'
      return 'player'
    elsif answer == 'c'
      return 'computer'
    else
      prompt "Mmmm... that doesn't seem right."
    end
  end
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

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def threat_or_opportunity_line?(brd, line, marker)
  brd.values_at(*line).count(marker) == 2 &&
    brd.values_at(*line).count(INITIAL_MARKER) == 1
end

def threat_or_opportunity_square(brd, marker)
  WINNING_LINES.each do |line|
    if threat_or_opportunity_line?(brd, line, marker)
      line.each { |square| return square if brd[square] == INITIAL_MARKER }
    end
  end
  nil
end

def threat(brd)
  threat_or_opportunity_square(brd, COMPUTER_MARKER)
end

def opportunity(brd)
  threat_or_opportunity_square(brd, PLAYER_MARKER)
end

def free_middle_square?(brd)
  empty_squares(brd).include?(5)
end

def computer_places_piece!(brd)
  return (brd[opportunity(brd)] = COMPUTER_MARKER) if opportunity(brd)
  return (brd[threat(brd)] = COMPUTER_MARKER) if threat(brd)
  return (brd[5] = COMPUTER_MARKER) if free_middle_square?(brd)

  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
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

def make_move!(current_player, brd)
  if current_player == 'player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def game_over(brd)
  someone_won?(brd) || board_full?(brd)
end

def alternate_player(current)
  current == 'player' ? 'computer' : 'player'
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

def keep_playing?
  loop do
    prompt "Play again? (y or n)"
    answer = gets.chomp

    if answer.downcase.start_with?('y')
      return true
    elsif answer.downcase.start_with?('n')
      return false
    else
      prompt "'#{answer}' is not valid! Please choose 'y' or 'n'"
    end
  end
end

def display_points(score)
  prompt format("Player score %s", score[:player])
  prompt format("Computer score %s", score[:computer])
end

def display_winner(brd)
  if someone_won?(brd)
    prompt("#{detect_winner(brd)} won!")
  else
    prompt("It's a tie.")
  end
end

# start program
system 'clear'
score = { player: 0, computer: 0 }

# main game loop
loop do
  board = initialize_board
  current_player = choose_who_moves_first

  # individual game loop
  loop do
    display_board(board)

    make_move!(current_player, board)
    current_player = alternate_player(current_player)
    break if game_over(board)
  end

  assign_points_to_winner(board, score)

  display_board(board)
  display_winner(board)
  display_points(score)

  break if final_winner?(score)

  break unless keep_playing?
end

prompt "Thanks for playing Tic Tac Toe. Good bye!"
