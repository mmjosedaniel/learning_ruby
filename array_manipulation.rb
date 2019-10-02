
# frozen_string_literal: true

# Not accomplished 

n = 5
queries = [[1, 2, 100], [2, 5, 100], [3, 4, 100]]

def arrayManipulation(n, queries)
  arr = Array.new(n) { 0 }
  queries.each do |val|
    a = val[0] - 1
    b = val[1] - 1
    k = val[2]
    while a <= b
      arr[a] += k
      a += 1
    end
  end
  p arr.max
end

arrayManipulation(n, queries)