# frozen_string_literal: true

arr = [2, 3, 4, 5, 6, 7, 8, 9, 10, 1]

def insertionSort1(arr)
  element = arr[-1]
  index = arr.index(element)

  while arr[index - 1] > element
    break if index == 0
    arr[index] = arr[index - 1]
    print arr.join(' ')
    puts ''
    index -= 1
  end
  arr.insert(index, element)
  arr.delete_at(index + 1)
  print arr.join(' ')
end

insertionSort1(arr)
