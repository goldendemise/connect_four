require './lib/game_board'

RSpec.describe 'GameBoard' do
  describe '#build_board' do
    it 'returns a 7 across, 6 deep grid' do
      game_board = GameBoard.new
      expect(game_board.build_board).to eql([['', '', '', '', '', '', ''], ['', '', '', '', '', '', ''], ['', '', '', '', '', '', ''] ,['', '', '', '', '', '', ''] ,['', '', '', '', '', '', ''] ,['', '', '', '', '', '', '']])
    end
  end

  describe '#build_row' do
    it 'returns a 7 across blank array' do
      game_board = GameBoard.new
      expect(game_board.build_row).to eql(['', '', '', '', '', '', ''])
    end
  end

  describe '#place_checker' do
    it 'places a pieces vertically in the indicated column' do
      game_board = GameBoard.new
      board_grid = game_board.build_board
      game_board.place_checker(0, board_grid)
      expect(board_grid[-1]).to eql(['( )', '', '', '', '', '', ''])
      game_board.place_checker(0, board_grid)
      expect(board_grid[-2]).to eql(['( )', '', '', '', '', '', ''])
    end
  end

  describe '#whose_turn' do
    it 'returns red player if black is selected, and vise versa' do
      game_board = GameBoard.new
      expect(game_board.whose_turn('red')).to eql('black')
      expect(game_board.whose_turn('black')).to eql('red')
    end
  end

  describe '#player_piece' do
    it 'returns a red piece for player red, and a black piece otherwise' do
      game_board = GameBoard.new
      expect(game_board.player_piece('red').to eql('( )'))
    end
  end
end
