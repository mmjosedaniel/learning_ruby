# frozen_string_literal: true

n = 8
cases = [[2, 3], [1, 4], [2, 4], [2, 4], [2, 3]]
width = [1, 2, 2, 2, 1]

def serviceLane(n, width, cases)
  result = []
  cases.length.times do |i|
    first = cases[i][0]
    secound = cases[i][1] + 1 - cases[i][0]
    result.push(width[first, secound].min)
  end
  result
end

p serviceLane(n, width, cases)
