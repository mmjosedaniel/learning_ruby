# frozen_string_literal: true

b = '0101010'

def beautifulBinaryString(b)
  comp = %w[0 1 0]
  count = 0

  b_chars = b.chars
  b_length = b.length

  (b_length - 2).times do |i|
    if comp[0] == b_chars[i] &&
       comp[1] == b_chars[i + 1] &&
       comp[2] == b_chars[i + 2]
      b_chars[i + 2] = '1'
      count += 1
    else
      next
    end
  end
  p count
end

beautifulBinaryString(b)
