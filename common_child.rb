# frozen_string_literal: true

s1 = 'ABCDEF'
s2 = 'FBDAMN'

arr1 = s1.chars
arr2 = s2.chars

diff = (arr1 - arr2) + (arr2 - arr1)

common1 = arr1 - diff
common2 = arr2 - diff

common1.unshift('')
common2.unshift('')

arr_m = Array.new(common1.length) { Array.new(common2.length, 0) }

(common1.length - 1).times do |i|
  (common2.length - 1).times do |j|
    if common1[i + 1] == common2[j + 1]
      arr_m[i + 1][j + 1] = (arr_m[i][j] + 1)
    elsif arr_m[i][j + 1] > arr_m[i + 1][j]
      arr_m[i + 1][j + 1] = arr_m[i][j + 1]
    else
      arr_m[i + 1][j + 1] = arr_m[i + 1][j]
    end
  end
end

p arr_m.max.max
