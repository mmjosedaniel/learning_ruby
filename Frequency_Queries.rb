# frozen_string_literal: true

queries = [[3, 4], [2, 1003], [1, 16], [3, 1]]

queries_length = queries.length
arr = []
arr_type3 = []

queries_length.times do |i|
  a = queries[i][0]
  b = queries[i][1]
  p b
  case a
  when 1
    arr.push(b)
  when 2
    if arr[b] != nil
      arr.delete_at(b)
    end
  when 3
    arr_f = arr.map { |value| arr.count(value) }
    if arr_f.include? b
      arr_type3.push(1)
    else
      arr_type3.push(0)
    end
  end
end
p arr
p arr_type3
