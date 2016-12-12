require 'pry'

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

WINNING_LINES = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ] +  # rows
                [ [1, 4, 7], [2, 5, 8], [3, 6, 9] ] +  # cols
                [ [1, 5, 9], [3, 5, 7] ]               # diagonals

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
  #threat_or_opportunity_square(brd, COMPUTER_MARKER)
  threat_or_opportunity_square(brd, PLAYER_MARKER)
end

def opportunity(brd)
  threat_or_opportunity_square(brd, COMPUTER_MARKER)
end

def computer_places_piece!(brd)
  return (brd[opportunity(brd)] = COMPUTER_MARKER) if opportunity(brd)
  return (brd[threat(brd)] = COMPUTER_MARKER) if threat(brd)
  return (brd[5] = COMPUTER_MARKER) if free_middle_square?(brd)

  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

board = {1 => 'X', 2 => 'X', 3 => ' ', 4 => ' ', 5 => 'X', 6 => ' ', 7 => ' ', 8 => 'O', 9 => 'O'}

binding.pry

computer_places_piece!(board)

p board
