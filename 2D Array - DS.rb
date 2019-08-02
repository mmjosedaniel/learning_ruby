# frozen_string_literal: true

arr = [[-9, -9, -9, 1, 1, 1],
       [0, -9, 0, 4, 3, 2],
       [-9, -9, -9, 1, 2, 3],
       [0, 0, 8, 6, 6, 0],
       [0, 0, 0, -2, 0, 0],
       [0, 0, 1, 2, 4, 0]]

arr2 = [[1, 1, 1, 0, 0, 0],
        [0, 1, 0, 0, 0, 0],
        [1, 1, 1, 0, 0, 0],
        [0, 0, 2, 4, 4, 0],
        [0, 0, 0, 2, 0, 0],
        [0, 0, 1, 2, 4, 0]]

arr_hourglass_sum = []

4.times do |i|
  4.times do |j|
    arr_hourglass_sum.push(arr2[i][j] + arr2[i][j + 1] + arr2[i][j + 2] + arr2[i + 1][j + 1] + arr2[i + 2][j] + arr2[i + 2][j + 1] + arr2[i + 2][j + 2])
  end
end

p arr_hourglass_sum

