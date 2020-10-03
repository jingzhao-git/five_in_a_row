
def check_for_winner(board, player)
  @player = player
  @board = board
    (0..15).each do |y|
    (0..15).each do |x|
      return player if five_in_line?(x, y) || five_in_column?(x, y) || five_in_right_oblique?(x, y) || five_in_left_oblique?(x, y)
    end
  end
  return false
end

def five_in_line?(x, y)
  if x + 4 > 15
    return false
  else
    return @board[y][x] == @player &&
          @board[y][x] == @board[y][x + 1] &&
          @board[y][x] == @board[y][x + 2] &&
          @board[y][x] == @board[y][x + 3] &&
          @board[y][x] == @board[y][x + 4]
  end
end
def five_in_column?(x, y)
  if y + 4 > 15
    return false
  else
    return @board[y][x] == @player &&
          @board[y][x] == @board[y + 1][x] &&
          @board[y][x] == @board[y + 2][x] &&
          @board[y][x] == @board[y + 3][x] &&
          @board[y][x] == @board[y + 4][x]
  end
end
def five_in_right_oblique?(x, y)
  if x + 4 > 15 || y + 4 > 15
    return false
  else
    return @board[y][x] == @player &&
          @board[y][x] == @board[y + 1][x + 1] &&
          @board[y][x] == @board[y + 2][x + 2] &&
          @board[y][x] == @board[y + 3][x + 3] &&
          @board[y][x] == @board[y + 4][x + 4]
  end
end
def five_in_left_oblique?(x, y)
  if x - 4 < 0 || y + 4 > 15
    return false
  else
    return @board[y][x] == @player &&
          @board[y][x] == @board[y + 1][x - 1] &&
          @board[y][x] == @board[y + 2][x - 2] &&
          @board[y][x] == @board[y + 3][x - 3] &&
          @board[y][x] == @board[y + 4][x - 4]
  end
end