require_relative "piece"

class King < Piece
  include Steppable

  def picture
    "\u265A"
  end

  def movement
    [
      [-1,-1],
      [-1,0],
      [-1,1],
      [0,-1],
      [0,1],
      [1,-1],
      [1,0],
      [1,1],
    ]
  end


end
