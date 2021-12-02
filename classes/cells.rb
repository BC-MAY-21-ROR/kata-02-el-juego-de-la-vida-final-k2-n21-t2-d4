require './classes/grid'

class Cells
  def generation(grid, grid2, row, col)
    (1..row - 2).each do |i|
      (1..col - 2).each do |j|
        alive_cells = 0
        (-1..1).each do |a|
          (-1..1).each do |b|
            alive_cells += grid[j + a][i + b] if i + a >= 0 && j + b >= 0
          end
        end
        alive_cells -= grid[j][i]
        grid2[j][i] = if grid[j][i] == 1 && alive_cells < 2
                        0
                      elsif grid[j][i] == 1 && alive_cells > 3
                        0
                      elsif grid[j][i].zero? && alive_cells == 3
                        1
                      else
                        grid[j][i]
                      end
      end
    end
  end
end
