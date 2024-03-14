require_relative "pieces/pawn" # look into folder PATH we set
require_relative "pieces/rook" # look into folder PATH we set
require_relative "pieces/king" # look into folder PATH we set
require_relative "pieces/queen" # look into folder PATH we set
require_relative "pieces/bishop" # look into folder PATH we set
require_relative "pieces/knight" # look into folder PATH we set
require_relative "pieces/steppable"

require 'colorize'

# this file is like a legend that calls the ruby files from the pieces folder
# this file is activated by board.rb


#all this does is require the pieces above when board.rb calls this file