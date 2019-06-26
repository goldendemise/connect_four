# 7 Across, 6 deep is connect four

class GameBoard

  attr_accessor :board, :player_turn

  def initialize
    @board = build_board
    @player_turn = 'red'
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

  def place_checker(column, game_board = board, player = 'X')
    (board.length - 1).downto(0) do |iter|
      if game_board[iter][column].empty?
        game_board[iter][column] = player
        break
      end
    end
  end

  def whose_turn(player = player_turn)
    player == 'red' ? 'black' : 'red'
  end
end
