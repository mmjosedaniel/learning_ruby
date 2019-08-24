# frozen_string_literal: true

p = 100
d = 19
m = 1
s = 180

def howManyGames(p, d, m, s)
  return p 0 if p > s

  count = 0
  while s > m && s >= p
    count += 1
    s -= p
    p s
    p -= d
    break if p <= m
  end

  count += (s / m) if s >= m && s >= p
  p count
end

howManyGames(p, d, m, s)
