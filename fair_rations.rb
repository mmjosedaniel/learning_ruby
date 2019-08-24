# frozen_string_literal: true

b = [2, 3, 4, 5, 6]
n = 5

def fairRations(b, n)
  loafs = 0
  (n - 1).times do |i|
    if b[i].odd?
      b[i] += 1
      b[i + 1] += 1
      loafs += 2
    end
  end
  if b.sum.even?
    p loafs
  else
    'No'
  end
end

fairRations(b, n)
