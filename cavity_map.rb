
grid = %w[179443854
    961621369
    164139922
    968633951
    812882578
    257829163
    812438597
    176656233
    485773814]

def cavityMap(grid)
colums = grid.length - 2
rows = grid[0].size - 2

colums.times do |i|
rows.times do |j|
check = grid[i + 1][j + 1]
grid[i + 1][j + 1] = 'X' if check > grid[i][j + 1] &&
                            check > grid[i + 1][j + 2] &&
                            check > grid[i + 2][j + 1] &&
                            check > grid[i + 1][j]
end
end
p grid
end

cavityMap(grid)
