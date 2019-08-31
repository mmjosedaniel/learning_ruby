# frozen_string_literal: true

n = 8
arr = [8, 7, 6, 5, 4, 3, 2, 1]

def insertionSort2(n, arr)
  (n).times do |i|
    next if i.zero?

    comp = arr[i]
    if comp < arr[i - 1]
      n.times do |j|
        arr.insert(j, arr.delete_at(i)) && break if arr[j] > comp
      end
    end
    puts arr.join(' ')
  end
end

insertionSort2(n, arr)