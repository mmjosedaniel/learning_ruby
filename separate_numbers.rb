# frozen_string_literal: true

# does not work in all the cases

s = "010203"

def separateNumbers(s)
  arr = []
  s_size = s.size
  i = 1
  response = 'NO'

  while i < s_size
    i += 1
    next unless (s_size % i.to_f).zero? || s_size % i == i - 1

    j = 0
    increment = (s_size / i.to_f).ceil
    increment = (s_size / i.to_f).floor if s_size.odd? && j.zero?

    while j < s_size
      arr.push(s[j, increment])

      j += increment
      increment = (s_size / i.to_f).ceil
    end

    break if arr[0][0] == '0'

    (arr.length - 1).times do |k|
      if arr[k + 1].to_i - arr[k].to_i != 1
        break
      elsif k + 2 == arr.length
        response = 'YES ' + arr[0]
        break
      end
    end
    break if response != 'NO'

    arr = []
  end
  p response
end

separateNumbers(s)
