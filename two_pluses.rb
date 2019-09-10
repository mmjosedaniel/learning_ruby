# frozen_string_literal: true

grid = %w[GGGGGGGGG
    GBBBGGBGG
    GBBBGGBGG
    GBBBGGBGG
    GBBBGGBGG
    GBBBGGBGG
    GBBBGGBGG
    GGGGGGGGG]

def twoPluses(grid)
grid_h = grid.length
grid_w = grid[0].length

plus_size = [grid_h, grid_w].min
plus_size -= 1 if plus_size.even?

p find_plus(grid_h, grid_w, plus_size, grid)
end

def find_plus(grid_h, grid_w, plus_size, grid)
first_plus = 1
secound_plus = 1
result = [1]
grid_chars = grid.map(&:chars)

(plus_size / 2).times do
(grid_h - plus_size + 1).times do |i|
half = (plus_size / 2)
(grid_w - plus_size + 1).times do |j|
  next if grid_chars[i + half][j + half] != 'G'

  half.times do |k|
    break unless grid_chars[i + k][j + half] == 'G' &&
                 grid_chars[i + half][j + half + half - k] == 'G' &&
                 grid_chars[i + half + half - k][j + half] == 'G' &&
                 grid_chars[i + half][j + k] == 'G'

    next unless k == half - 1

    first_plus = (half * 4) + 1
    grid_chars[i + half][j + half] = 'U'
    half.times do |l|
      grid_chars[i + l][j + half] = 'U'
      grid_chars[i + half][j + half + half - l] = 'U'
      grid_chars[i + half + half - l][j + half] = 'U'
      grid_chars[i + half][j + l] = 'U'
    end

    secound_plus = find_second_plus(grid_h, grid_w, plus_size, grid_chars)

    result.push(first_plus * secound_plus)

    grid_chars = grid.map(&:chars)
  end
end
end
plus_size -= 2
end

result.max
end

def find_second_plus(grid_h, grid_w, plus_size, grid_chars)
secound_plus = 1
(plus_size / 2).times do
(grid_h - plus_size + 1).times do |i|
half = (plus_size / 2)
(grid_w - plus_size + 1).times do |j|
  next if grid_chars[i + half][j + half] != 'G'

  half.times do |k|
    break unless grid_chars[i + k][j + half] == 'G' &&
                 grid_chars[i + half][j + half + half - k] == 'G' &&
                 grid_chars[i + half + half - k][j + half] == 'G' &&
                 grid_chars[i + half][j + k] == 'G'

    next unless k == half - 1

    secound_plus = (half * 4) + 1
  end
  break if secound_plus > 1
end
break if secound_plus > 1
end
break if secound_plus > 1

plus_size -= 2
end

secound_plus
end

twoPluses(grid)
