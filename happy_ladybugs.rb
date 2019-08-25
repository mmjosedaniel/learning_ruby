# frozen_string_literal: true

b = "AABBC"

def happyLadybugs(b)
  b_size = b.size

  b_chars = b.chars
  b_chars.delete('_')
  b_uniq =  b_chars.uniq

  arr_count = b_uniq.map { |a| b_chars.count(a) }
  arr_count_min = arr_count.min

  if arr_count_min.nil?
    p 'YES'
  elsif arr_count_min > 1 && b_size > b_chars.length
    p 'YES'
  elsif b_uniq.length == 1 && b_size == b_chars.length && arr_count_min > 1
    p 'YES'
  elsif arr_count_min == 1
    p 'NO'
  elsif b_chars.length > 3
    count = 0
    (b_chars.length - 2).times do |i|
      if b_chars[i] == b_chars[i + 1] || b_chars[i + 1] == b_chars[i + 2]
        next
      else
        count += 1
      end
    end
    return p 'YES' if count.zero?
    return p 'NO' if count != 0
  else
    p 'NO'
  end
end

happyLadybugs(b)
