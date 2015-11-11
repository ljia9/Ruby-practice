require './board'

b = Board.new([[1,1], [0,1], [0,2], [0,0], [2,2], [2,1]])

#sample blocks that do special movements
boat = Board.new([[1,1], [1,2], [2,1], [2,3], [3,2]], 5, 5)
blinker = Board.new([[2,1], [2,2], [2,3]], 5, 5)
toad = Board.new([[3,1], [3,2], [3,3], [2,2], [2,3], [2,4]], 6, 6)
glider = Board.new([[0,1], [2,0], [2,1], [1,2], [2,2]], 15, 15)


def view(block)
  25.times {
  	block.print_board
  	block = block.evolve
  }
end

view(glider)
