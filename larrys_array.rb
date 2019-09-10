# frozen_string_literal: true

arr = [1, 3, 4, 2]

def larrysArray(arr)
  arr_length = arr.length
  inversions = 0

  (arr_length - 1).times do |i|
    temp = arr[i]
    (arr_length - i - 1).times do |j|
      inversions += 1 if temp > arr[j + i + 1]
    end
  end
  p inversions
  if inversions.even?
    p 'YES'
  else
    p 'NO'
  end
end

larrysArray(arr)
