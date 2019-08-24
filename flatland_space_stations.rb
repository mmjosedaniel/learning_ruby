# frozen_string_literal: true

n = 100
c = [93, 41, 91, 61, 30, 6, 25, 90, 97]

def flatlandSpaceStations(n, c)
  c.sort!
  n -= 1
  first_d = c.first - 0
  last_d = n - c.last
  max_dist = 0

  (c.length - 1).times do |i|
    break if c.length == 1

    from_a_to_b = c[i + 1] - c[i]
    max_dist = from_a_to_b if from_a_to_b > max_dist
  end

  result = [max_dist / 2, first_d, last_d]
  p result.max
end

flatlandSpaceStations(n, c)
