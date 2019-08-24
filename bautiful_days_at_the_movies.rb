# frozen_string_literal: true

i = 13
j = 45
k = 3
def beautifulDays(i, j, k)
  result = 0
  days = Array(i..j)

  days.length.times do |i|
    day_reversed = days[i].to_s.reverse.to_f

    result += 1 if (((days[i] - day_reversed) / k) % 1).zero?
  end
  p result
end

beautifulDays(i, j, k)
