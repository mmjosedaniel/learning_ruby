# frozen_string_literal: true

p = [2, 3, 1]

def permutationEquation(p)
  arr = []
  p.length.times do |i|
    p1 = p.index(i + 1) + 1
    p2 = p.index(p1) + 1
    arr.push(p2)
  end
  p arr
end

permutationEquation(p)
