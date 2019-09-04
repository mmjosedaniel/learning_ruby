# frozen_string_literal: true

n = 5
k = 3
r_q = 4
c_q = 3
obstacles = [[5, 5], [4, 2], [2, 3]]
# obstacles = [[5, 3], [5, 4], [4, 4], [3, 4], [3, 3], [3, 2], [4, 2], [5, 2]]

def queensAttack(n, _k, r_q, c_q, obstacles)
  distances = compare_distances(n, r_q, c_q, obstacles)
  p distances.values.sum
end

def start_distances(n, r_q, c_q)
  distances = {}

  distances.store('up', n - r_q) # *up
  distances.store('right', n - c_q) # *right
  distances.store('down', r_q - 1) # *down
  distances.store('left', c_q - 1) # *left

  distances.store('up_r', [n - r_q, n - c_q].min) # *up_r
  distances.store('down_r', [r_q - 1, n - c_q].min) # *down_r
  distances.store('down_l', [r_q - 1, c_q - 1].min) # *down_l
  distances.store('up_l', [n - r_q, c_q - 1].min) # *up_l

  distances
end

def compare_distances(n, r_q, c_q, obstacles)
  distances = start_distances(n, r_q, c_q)
  obstacles.each do |v|
    v0 = v[0]
    v1 = v[1]

    if v1 == c_q && v0 > r_q && (v0 - r_q - 1) < distances['up']
      distances['up'] = (v0 - r_q - 1)

    elsif v1 == c_q && v0 < r_q && (r_q - v0 - 1) < distances['down']
      distances['down'] = (r_q - v0 - 1)

    elsif v0 == r_q && v1 > c_q && (v1 - c_q - 1) < distances['right']
      distances['right'] = (v1 - c_q - 1)

    elsif v0 == r_q && v1 < c_q && (c_q - v1 - 1) < distances['left']
      distances['left'] = (c_q - v1 - 1)

    elsif v0 > r_q && v1 > c_q && (v0 - r_q) == (v1 - c_q) &&
          (v0 - r_q - 1) < distances['up_r']
      distances['up_r'] = (v0 - r_q - 1)

    elsif v0 < r_q && v1 > c_q && (r_q - v0) == (v1 - c_q) &&
          (r_q - v0 - 1) < distances['down_r']
      distances['down_r'] = (r_q - v0 - 1)

    elsif v0 < r_q && v1 < c_q && (r_q - v0) == (c_q - v1) &&
          (r_q - v0 - 1) < distances['down_l']
      distances['down_l'] = (r_q - v0 - 1)
    elsif v0 > r_q && v1 < c_q && (v0 - r_q) == (c_q - v1) &&
          (v0 - r_q - 1) < distances['up_l']
      distances['up_l'] = (v0 - r_q - 1)
    else
      next
    end
  end
  distances
end

queensAttack(n, k, r_q, c_q, obstacles)

# * Shows the position of the last possible obstacle to stop the queen
# def last_obstacles(n, r_q, c_q, obstacles)
#   obstacles.push([n, c_q]) # *up
#   obstacles.push([r_q, n]) # *right
#   obstacles.push([1, c_q]) # *down
#   obstacles.push([r_q, 1]) # *left
#
#   obstacles.push([[n + r_q - c_q, n].min, [n + c_q - r_q, n].min]) # *up_r
#   obstacles.push([[r_q + c_q - n, 1].max, [r_q + c_q - 1, n].min]) # *down_r
#   obstacles.push([[r_q - c_q + 1, 1].max, [c_q - r_q + 1, 1].max]) # *down_l
#   obstacles.push([[r_q + c_q - 1, n].min, [c_q + r_q - n, 1].max]) # *up_l
# end
