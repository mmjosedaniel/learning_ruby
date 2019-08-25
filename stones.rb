# frozen_string_literal: true

n = 73
a = 25
b = 25

def stones(n, a, b)
  n_short = n - 1 # 0 doesn't cout so - 1
  result = [] # Arr to add results

  n.times do |i|
    a_times = (n_short - i) * a
    b_times = i * b
    result.push(a_times + b_times)
  end
  p result.uniq.sort
end

stones(n, a, b)

# def stones(n, a, b)
#   n_short = n - 1 # 0 doesn't cout so - 1
#   n_pow = 2**n_short # The number of permutations
#   result = [] # Arr to add results
# 
#   n_pow.times do |i|
#     ones_in_binary = i.to_s(2).count('1')
#     # the pattern of b increment is the increment ++1 in binary
#     # e.g 001, 010, 011, 100, 101, 111
#     a_times = (n_short - ones_in_binary) * a
#     b_times = ones_in_binary * b
#     result.push(a_times + b_times) 
#   end
#   p result.uniq
# end
