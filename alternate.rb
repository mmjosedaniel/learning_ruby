# frozen_string_literal: true

s = 'asdcbsdcagfsdbgdfanfghbsfdab'

def alternate(s)
  result = 0
  s_chars = s.chars
  s_uniq = s_chars.uniq
  s_uniq_times = s_uniq.length
  
  (s_uniq_times - 1).times do |i|
    value_i = s_uniq[i]
    (s_uniq_times - i - 1).times do |j|
      value_j = s_uniq[j + i + 1]
      two_char = s_chars.select { |value| value =~ /[#{value_i}#{value_j}]/}
      two_char_length = two_char.length

      (two_char_length - 1).times do |k|
        break if two_char[k] == two_char[k + 1]

        result = two_char_length if result < two_char_length and k + 2 == two_char_length
      end
    end
  end
  p result
end

alternate(s)