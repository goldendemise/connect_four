# 7 Across, 6 deep is connect four

class GameBoard

  attr_accessor :board

  def initialize
    @board = build_board
  end

  def build_row
    row = []
    7.times do
      row.push('')
    end
    row
  end

  def build_board
    board = []
    6.times do
      board.push(build_row)
    end
    board
  end

  def place_checker(column, board = connect_4_board)
    (board.length - 1).downto(0) do |iter|
      if board[iter][column] == ''
        board[iter][column] = 'X' and break
      end
    end
  end
end
