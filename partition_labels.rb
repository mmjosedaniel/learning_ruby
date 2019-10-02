# frozen_string_literal: true

s = 'ababcbacadefegdehijhklij'

# @param {String} s
# @return {Integer[]}
def partition_labels(s)
  s_chars = s.chars
  arr = []
  temp = []
  arr_index = [0]

  helper(s_chars, arr, temp, arr_index)
  p arr.map(&:count)
end

def helper(s_chars, arr, temp, arr_index)
  return nil if s_chars[0].nil?

  temp_index = s_chars.rindex(s_chars[0])
  arr_index[0] -= 1
  arr_index[0] = temp_index if temp_index > arr_index[0]

  temp.push(s_chars.shift)

  if arr_index[0].zero?
    arr.push(temp)
    temp = []
    helper(s_chars, arr, temp, arr_index)
  end

  helper(s_chars, arr, temp, arr_index)
end

partition_labels(s)
