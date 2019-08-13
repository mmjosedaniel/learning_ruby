# frozen_string_literal: true

arr = [10, 100, 300, 200, 1000, 20, 30]
k = 3

arr_sorted = arr.sort
arr_length = arr.length
result = []

(arr_length - k + 1).times do |i|
  result.push(arr_sorted[i + k - 1] - arr_sorted[i])
end

result.min

p arr_sorted
p result
