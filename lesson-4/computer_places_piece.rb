INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # cols
                [[1, 5, 9], [3, 5, 7]]               # diagonals

board = {
  1 => 'X',
  2 => 'X',
  3 => 'O',
  4 => ' ',
  5 => ' ',
  6 => ' ',
  7 => 'X',
  8 => 'X',
  9 => ' '
}

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end


# from the board hash, create a new hash with only the values of the danger line
# within this hash, find the key that has value ' '
# square will be the key

def computer_places_piece!(brd)
  danger = danger_line(brd)

  if danger
    sub_hash = brd.select { |key, value| danger.include? key }
    square = sub_hash.select { |key, value| value == INITIAL_MARKER }.keys.first
    brd[square] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def danger_line(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
      return line
    end
  end
  nil
end

p board

# new_hash = board.select { |key, value| [1, 2, 3].include? key }
# p new_hash.select { |key, value| value == INITIAL_MARKER }.keys.first

p danger_line(board)
p computer_places_piece!(board)
p board



