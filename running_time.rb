# frozen_string_literal: true

arr = [2, 1, 3, 1, 2]

def runningTime(arr)
  count = 0
  arr_length = arr.length

  (arr_length - 1).times do |i|
    value = arr[i + 1]
    if value < arr[i]
      arr_length.times do |j|
        if arr[j] > value
          count += i - j + 1
          arr.delete_at(i + 1)
          arr.insert(j, value)
          break
        end
      end
    end
  end
  p count
end

runningTime(arr)
