# frozen_string_literal: true

n = 11
grid = ['.......',
        '...O.O.',
        '....O..',
        '..O....',
        'OO...OO',
        'OO.O...']

def bomberMan(n, grid)
  grid_high = grid.length
  grid_width = grid[0].length
  grids_str = { 1 => grid }

  grid_nums = create_grid_nums(grid_width, grid)

  4.times do |i|
    grid_high.times do |j|
      grid_width.times do |k|
        if grid_nums[j + 1][k + 1] == 8
          grid_nums[j + 1][k + 1] = 3
        elsif grid_nums[j + 1][k + 1] == 3
          grid_nums[j + 1][k + 1] = 2
        elsif grid_nums[j + 1][k + 1] == 2
          grid_nums[j + 1][k + 1] = 1
        elsif grid_nums[j + 1][k + 1] == 1
          grid_nums[j + 1][k + 1] = 8
          grid_nums[j][k + 1] = 8 if grid_nums[j][k + 1] != 9
          grid_nums[j + 1][k + 2] = 7 unless grid_nums[j + 1][k + 2] == 9 ||
                                             grid_nums[j + 1][k + 2] == 1
          grid_nums[j + 2][k + 1] = 7 unless grid_nums[j + 2][k + 1] == 9 ||
                                             grid_nums[j + 2][k + 1] == 1
          grid_nums[j + 1][k] = 8 if grid_nums[j + 1][k] != 9
        elsif grid_nums[j + 1][k + 1] == 7
          grid_nums[j + 1][k + 1] = 8
        end
      end
    end
    grid_str = grid_num_to_s(grid_high, grid_width, grid_nums)
    grids_str.store(i + 2, grid_str)
  end
  result = get_result(n, grids_str)
  result.each do |val|
    p val
  end
end

def create_grid_nums(grid_width, grid)
  grid_nums = grid.map { |val| val.tr('.O', '82').chars.map(&:to_i) }
  grid_nums.unshift(Array.new(grid_width, 9))
  grid_nums.push(Array.new(grid_width, 9))

  grid_nums.each do |val|
    val.unshift(9)
    val.push(9)
  end
end

def grid_num_to_s(grid_high, grid_width, grid_nums)
  grid_str = []

  grid_high.times do |i|
    grid_str.push(grid_nums[i + 1][1, grid_width])
  end
  grid_str.map! { |val| val.join.to_s.tr('8321', '.O') }
  grid_str
end

def get_result(n, grids_str)
  if n == 1
    grids_str[1]
  elsif n == 2
    grids_str[2]
  elsif n.even?
    grids_str[4]
  elsif n % 4 == 1
    grids_str[5]
  else
    grids_str[3]
  end
end

bomberMan(n, grid)

# grid_nums.each do |val|
#   p val
# end
