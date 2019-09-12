# frozen_string_literal: true

s = "acxz"

def funnyString(s)
  s_nums = s.codepoints
  s_nums_rev = s_nums.reverse

  arr_diff = []
  arr_diff_rev = []

  s_len = s.size

  (s_len - 1).times do |i|
    arr_diff.push((s_nums[i] - s_nums[i + 1]). abs)
  end

  (s_len - 1).times do |i|
    arr_diff_rev.push((s_nums_rev[i] - s_nums_rev[i + 1]). abs)
  end

  if arr_diff ==arr_diff_rev
    puts 'Funny'
  else
    puts 'Not Funny'
  end
end

funnyString(s)
