# frozen_string_literal: true

n = 12
k = 3

def absolutePermutation(n, k)
  return p (1..n).to_a if k.zero?
  return p [-1] if (n / k).odd? || ((n / k.to_f) % 1) != 0

  arr = (1..n).to_a
  i = 0

  while i < n
    arr[i, k], arr[i + k, k] = arr[i + k, k], arr[i, k]
    i += k + k
  end
  p arr
end

absolutePermutation(n, k)

# def absolutePermutation(n, k)
#  return p (1..n).to_a if k.zero?
#  return p [-1] if (n / k).odd? || ((n / k.to_f) % 1) != 0
#
#  arr = []
#  i = 1
#
#  arr += (((k + 1)..(k + k)).to_a + (1..k).to_a)
#  result = arr
#
#  while i < (n / arr.length)
#    result += arr.map { |val| val + (k + k) * i }
#    i += 1
#  end
#  p result
# end

# def absolutePermutation(n, k)
#  return p (1..n).to_a if k.zero?
#  return p [-1] if (n / k).odd? || ((n / k.to_f) % 1) != 0
#
#  arr = []
#  i = 1
#
#  while i < n
#    i_k = i + k
#    arr += ((i_k...(i + k + k)).to_a + (i...i_k).to_a)
#    i += k + k
#  end
#  p arr
# end
