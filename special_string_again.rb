# frozen_string_literal: true

str = 'abcbaba'
count = 0
arr = str.chars
n1 = arr.length - 1

n1.times do |i|
  range = (i + 2) / 2
  ran_aux = ((i + 2) / 2.0).ceil
  (n1 - i).times do |j|
    count += 1 if (arr[j, range] + arr[j + ran_aux, range]).uniq.count == 1
  end
end

p count + n1 + 1
