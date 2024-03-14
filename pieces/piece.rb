class Piece
  attr_reader :color
  attr_reader :board
  attr_accessor :position

  def initialize(color, position, board)
    @color = color
    @position = position
    @board = board
    @board.set_piece(self, position)
  end

  def display
    colorize_color = color == 'white' ? :light_white : :light_black
    return " #{picture} ".colorize(color: colorize_color)
  end

  def valid_move?(to)
    to_row, to_column = to

    return false if position == to
    return false if to_row < 0 || to_row > 7
    return false if to_column < 0 || to_column > 7

    true
  end

  def row
    position[0]
  end

  def col
    position[1]
  end

  def valid_moves
    moves.reject { |move| move_to_check? (color)}
  end

# when i move a piece, am i in check?
    #see if the king is in check
    #runs possible moves

  def move_to_check?(move)
    temp_board = Board.dup
    temp_board.move_piece(color, position, move)
    temp_board.in_check?(color)

    #temp_board duplicates existing board to run various moves for if the king is in check
      #.dup creates duplicate of existing board
    #temp_board.move_piece makes the move
    #move piece on temp board
    #check temp board if king is in check now
  end

  def moves
    []
  end

end