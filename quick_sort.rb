# frozen_string_literal: true

arr = [4, 5, 3, 7, 2]

def quickSort(arr)
  value = arr.shift
  left = []
  rigth = []
  arr.length.times do |i|
    left.push(arr[i]) if arr[i] < value
    rigth.push(arr[i]) if arr[i] > value
  end
  p left.push(value) + rigth
end

quickSort(arr)
