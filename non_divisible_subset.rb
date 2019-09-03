# frozen_string_literal: true

k = 7
s = [278, 576, 496, 727, 410, 124, 338, 149, 209, 702, 282, 718, 771, 575, 436]

def nonDivisibleSubset(k, s)
  arr = set_mod_list(k, s)

  # * Trere can be just one with modulus 0
  mod_k = 0
  mod_k = 1 if arr.shift.positive?

  mod_half_even = mod_half_even(arr, k)

  count = count(arr)

  p count + mod_half_even + mod_k
end

# * create a list with the different mudulus that are in the range of the
# * base number
def set_mod_list(k, s)
  arr = []
  k.times do |i|
    arr.push(s.count { |a| a % k == i })
  end
  arr
end

# * If number is even, there can be just once the number that is in the half
# * of the range of the number that is used as base  
def mod_half_even(arr, k)
  mod_half_even = 0
  mod_half_even = arr.delete_at(k / 2 - 1) if k.even?
  mod_half_even = 1 if mod_half_even.positive?
  mod_half_even
end

# * function to count the number of elements different than the modulus == 0
# * in the range fron 0 to k
def count(arr)
  count = 0
  arr_length_half = arr.length / 2

  arr_length_half.times do |i|
    if arr [i] > arr[- i - 1]
      count += arr[i]
    else
      count += arr[-i - 1]
    end
  end
  count
end

nonDivisibleSubset(k, s)

# def nonDivisibleSubset(k, s)
#   s_length = s.length - 1
#   arr = []
#
#   s_length.times do |i|
#     value1 = s[i]
#     (s_length - i).times do |j|
#       value2 = s[i + j + 1]
#
#       arr.push([value1, value2]) if ((value1 + value2) % k).zero?
#     end
#   end
#   arr_flat = arr.flatten
#   arr_uniq = arr_flat.uniq
#   arr_num_times = arr_uniq.map { |a| [arr_flat.count(a), a] }.sort
#
#   while arr_num_times.last[0] > 1
#     value_last = arr_num_times[-1][1]
#     arr.delete_if { |a| a.include?(value_last) }
#     s.delete(value_last)
#     break if arr == []
#
#     # ! Trying to improve speed, it did not work.
#     # if arr_num_times[-2][0] > ((arr_num_times[-1][0] / 2.0).ceil + 2)
#     #   arr.delete_if { |a| a.include?(arr_num_times[-2][1]) }
#     #   s.delete(arr_num_times[-2][1])
#     # end
#
#     arr_flat = arr.flatten
#     arr_uniq = arr_flat.uniq
#     arr_num_times = arr_uniq.map { |a| [arr_flat.count(a), a] }.sort # Center
#   end
#
#   p s.length
# end
