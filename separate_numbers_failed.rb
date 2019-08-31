# frozen_string_literal: true

# Failed

s = "100101"

def separateNumbers(s)
  yes_no(s, 1, 1)
  yes_no(s, 1, 2)
  yes_no(s, 2, 2)
  yes_no(s, 2, 3)
  yes_no(s, 3, 3)
  yes_no(s, 3, 4)
  yes_no(s, 4, 4)
end

def yes_no(s, num1, num2)
  s_size = s.size
  num = 0
  i = num1

  if s[num1, num2].to_i - s[0, num1].to_i == 1
    num = s[0, num1].to_i

    while i <= s_size - num1
      num += 1
      num_size = num.to_s.size
      s[i, num_size]
      if num !=  s[i, num_size].to_i
        puts 'NO'
        break
      elsif i == s_size - num2
        puts 'YES ' + s[0, num1]
      end

      i += num_size
    end
  end
end

separateNumbers(s)
