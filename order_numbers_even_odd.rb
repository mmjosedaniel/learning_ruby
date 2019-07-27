# frozen_string_literal: true

array_a = Array[3, 300, 6, 23, 50, 15, 30, 49, 1]

def sort_array(array_a)
  for i in 0..array_a.length - 2 do
    for j in i + 1..array_a.length - 1 do
      if array_a[i] > array_a[j]
        keeper_num = array_a[i]
        array_a[i] = array_a[j]
        array_a[j] = keeper_num
      end
    end
  end
end

def odd_numbers(array_a_to_odds)
  odd = Array[]
  array_a_to_odds.each do |item|
    if item % 2 == 0
      odd += Array[item]
    end
  end
  odd
end

def even_numbers(array_a_to_even)
  even = Array[]
  array_a_to_even.each do |item|
    if item % 2 != 0
      even += Array[item]
    end
  end
  even
end

sort_array(array_a)
array_odd = odd_numbers(array_a)
array_even = even_numbers(array_a)

puts array_even
puts ''
puts array_odd
