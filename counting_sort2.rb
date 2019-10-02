# frozen_string_literal: true

arr = [
    63, 25, 73, 1, 98, 73, 56, 84, 86, 57, 16, 83, 8, 25, 81, 56, 9, 53, 98,
    67, 99, 12, 83, 89, 80, 91, 39, 86, 76, 85, 74, 39, 25, 90, 59, 10, 94,
    32, 44, 3, 89, 30, 27, 79, 46, 96, 27, 32, 18, 21, 92, 69, 81, 40, 40,
    34, 68, 78, 24, 87, 42, 69, 23, 41, 78, 22, 6, 90, 99, 89, 50, 30, 20,
    1, 43, 3, 70, 95, 33, 46, 44, 9, 69, 48, 33, 60, 65, 16, 82, 67, 61,
    32, 21, 79, 75, 75, 13, 87, 70, 33
  ]

# arr = [19, 10, 12, 10, 24, 25, 22]

def countingSort(arr)
  arr_length = arr.length
  arr_range = Array.new(100) { 0 }
  arr_sorted = Array.new(arr_length) { 0 }
  i = 0

  while i < arr_length
    arr_range[arr[i]] += 1
    i += 1
  end

  i = 0
  a = 0

  while i < 100
    b = a + arr_range[i]
    while a < b
    arr_sorted[a] = i
    a += 1
    end
    i += 1
  end

  p arr_sorted
end

countingSort(arr)
