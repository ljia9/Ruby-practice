class Board
attr_accessor :width, :height

  def initialize(cells=[], width = 3, height = 3)
  	@cells = cells
  	@width = width
  	@height = height
  end

  def live_cells
  	@cells
  end

  def is_alive?(x, y)
  	@cells.include?([x, y])
  end

  def should_survive?(x ,y)
  	(neighbors_to(x, y) >=2 and neighbors_to(x, y)<4) and is_alive?(x, y)
  end

  def should_reproduce?(x, y)
  	not is_alive?(x, y) and neighbors_to(x, y) == 3
  end

  def neighbors_to(x, y)
    @cells.select do |cell_x, cell_y|
    dx = (x-cell_x).abs
    dy = (y-cell_y).abs
    #If x,y is neighbors the cell then the following is true
    dx <= 1 and dy <= 1 and not (dx == 0 and dy == 0)
    end.length
  end

  def evolve
  	survivors = []
    @width.times do |x|
      @height.times do |y|
        survivors << [x,y] if should_survive?(x,y) or should_reproduce?(x,y)
      end
    end
    #Return new board based on the surviving generation
    Board.new(survivors, self.width,self.height)
  end

  def print_board
  	puts "New Generation:\n"
  	@width.times do |x|
  	  @height.times do |y|
  	  	print "#{is_alive?(x, y) ? '#' : '-'}"
  	  end
  	  puts
  	end
  	puts
  end

end
