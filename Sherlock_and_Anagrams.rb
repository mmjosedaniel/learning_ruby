# frozen_string_literal: true

str = 'ifailuhkqq'
str_length = str.length - 1
counter = 0

str_length.times do |i|
  str_length.times do |j|
    k_length = str_length - j - i
    k_range = j + 1
    k_length.times do |k|
      # print '  i: ' + i.to_s
      # print '  j: ' + j.to_s
      # print ' - k: ' + k.to_s
      # print ' - first_value: ' + str[i, j + 1]
      # print ' - second_value: ' + str[k + i + 1, j + 1]
      # puts ''
      counter += 1 if str[i, k_range].chars.sort == str[k + i + 1, j + 1].chars.sort
    end
  end
  # puts '_________________________'
end
puts counter
