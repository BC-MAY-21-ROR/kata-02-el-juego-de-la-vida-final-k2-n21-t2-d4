class Grid
  attr_accessor :grid, :grid2, :row, :col

  def initialize(c, r)
    @col = c
    @row = r
    @grid = Array.new(@col) { Array.new(@row) }
    @grid2 = Array.new(@col) { Array.new(@row) }
  end

  def generateRandomCell
    num = rand(4)
  end

  def generate_matrix
    (0..(@row - 1)).each do |r|
      (0..(@col - 1)).each do |c|
        fillCell(c, r, generateRandomCell)
      end
    end
  end

  def fillCell(c, r, random)
    @grid2[c][r] = 0
    @grid[c][r] = random == 0 ? 1 : 0
  end

  def draw(g)
    (0..(@row - 1)).each do |i|
      (0..(@col - 1)).each { |j| g[j][i].zero? ? print('.') : print('*') }
      print "\n"
    end
  end
end
