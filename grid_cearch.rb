# frozen_string_literal: true

grid = %w[7283455864
    6731158619
    8988242643
    3830589324
    2229505813
    5633845374
    6473530293
    7053106601
    0834282956
    4607924137]

pattern = %w[9505
       3845
       3530]

def gridSearch(grid, pattern)
g_rows = grid.length
g_cols = grid[0].length

p_rows = pattern.length
p_cols = pattern[0].length

message = 'NO'

(g_rows - p_rows + 1).times do |i|
next unless grid[i].include?(pattern[0]) # *This increases the espeed

(g_cols - p_cols + 1).times do |j|
pattern_temp = []
p_rows.times do |k|
  pattern_temp.push(grid[i + k][j, p_cols])
end

if pattern == pattern_temp
  message = 'YES'
  break
end
end
end
p message
end

gridSearch(grid, pattern)
