# frozen_string_literal: true

label = 14

# @param {Integer} label
# @return {Integer[]}
def path_in_zig_zag_tree(label)
  arr = []
  result = []
  next_n = 1

  while next_n - 1 < label
    arr.push(Array.new(next_n) { |i| i + next_n })
    next_n *= 2
  end

  arr_len = arr.length

  arr_len.times do |i|
    arr[i].reverse! if i.odd?
  end

  index_val = arr.last.index(label)
  i = arr_len - 1

  while i >= 0
    result.push(arr[i][index_val])
    index_val /= 2
    i -= 1
  end

  p result.reverse
end

path_in_zig_zag_tree(label)
