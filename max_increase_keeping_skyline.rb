# frozen_string_literal: true

grid = [[3, 0, 8, 4], [2, 4, 5, 7], [9, 2, 6, 3], [0, 3, 1, 0]]

# @param {Integer[][]} grid
# @return {Integer}
def max_increase_keeping_skyline(grid)
  top_bott = toop_bottom(grid.transpose)
  left_right = left_right(grid)

  p result(grid, top_bott, left_right)
end

def toop_bottom(grid)
  arr = []
  grid.each do |val|
    arr.push(val.max)
  end
  arr
end

def left_right(grid)
  arr = []
  grid.each do |val|
    arr.push(val.max)
  end
  arr
end

def result(grid, top_bott, left_right)
  top_bott_len = top_bott.length
  left_right_len = left_right.length
  sum = 0

  top_bott_len.times do |i|
    left_right_len.times do |j|
      sum += [top_bott[j], left_right[i]].min - grid[i][j]
    end
  end
  sum
end

max_increase_keeping_skyline(grid)
