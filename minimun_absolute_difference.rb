# frozen_string_literal: true

arr = [1, -3, 71, 68, 17]

arr_length = arr.length
comp = (arr[0] - arr[1]).abs

arr_length.times do |i|
  arr_length.times do |j|
    next if i == j

    sum_abs = (arr[i] - (arr[j])).abs
    comp = sum_abs if sum_abs < comp
  end
end

p comp