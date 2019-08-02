# frozen_string_literal: true

number = 4

def prime?(number)
  half_num = number / 2

  case number
  when 0
    false
  when 1, 2
    true
  when 3..number
    i = 2
    while i <= half_num
      return false if (number % i).zero?

      i += 1
    end
    true
  end
end

puts prime?(number)
