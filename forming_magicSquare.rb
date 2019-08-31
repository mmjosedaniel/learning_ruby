# frozen_string_literal: true

s = [[2, 9, 8], [4, 2, 7], [5, 6, 7]]

def formingMagicSquare(s)
  magic1 = [8, 3, 4, 1, 5, 9, 6, 7, 2]
  magic2 = [4, 9, 2, 3, 5, 7, 8, 1, 6]
  magic3 = [2, 7, 6, 9, 5, 1, 4, 3, 8]
  magic4 = [6, 1, 8, 7, 5, 3, 2, 9, 4]
  magic5 = [6, 7, 2, 1, 5, 9, 8, 3, 4]
  magic6 = [8, 1, 6, 3, 5, 7, 4, 9, 2]
  magic7 = [4, 3, 8, 9, 5, 1, 2, 7, 6]
  magic8 = [2, 9, 4, 7, 5, 3, 6, 1, 8]

  s.flatten!
  s_length = s.length

  count = Array.new(8, 0)
  s_length.times do |j|
    count[0] += (magic1[j] - s[j]).abs
    count[1] += (magic2[j] - s[j]).abs
    count[2] += (magic3[j] - s[j]).abs
    count[3] += (magic4[j] - s[j]).abs
    count[4] += (magic5[j] - s[j]).abs
    count[5] += (magic6[j] - s[j]).abs
    count[6] += (magic7[j] - s[j]).abs
    count[7] += (magic8[j] - s[j]).abs
  end
  p count.min
end

formingMagicSquare(s)
