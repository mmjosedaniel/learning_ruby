# frozen_string_literal: true

p = 1
q = 100

def kaprekarNumbers(p, q)
  valid_range = false
  while p <= q
    sqr_str = (p**2).to_s
    first_num = sqr_str[0, (sqr_str.size / 2)].to_i
    second_num = sqr_str[(sqr_str.size / 2), (sqr_str.size / 2.0).ceil].to_i
    if first_num + second_num == p
      print p.to_s + ' '
      valid_range = true
    end
    p += 1
  end
  puts 'INVALID RANGE' if valid_range == false
end

kaprekarNumbers(p, q)
