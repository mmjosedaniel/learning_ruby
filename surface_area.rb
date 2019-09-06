# frozen_string_literal: true

arr = [[1, 3, 4], [2, 2, 3], [1, 2, 4]]

def surfaceArea(arr)
  arr_length = arr.length
  arr_s_length = arr[0].length

  fix_arr(arr_s_length, arr)

  p get_surface(arr_length, arr_s_length, arr)
end

def fix_arr(arr_s_length, arr)
  arr.unshift(Array.new(arr_s_length, 0))
  arr.push(Array.new(arr_s_length, 0))

  arr.each do |val|
    val.unshift(0)
    val.push(0)
  end

  arr
end

def get_surface(arr_length, arr_s_length, arr)
  surf = 0
  arr_length.times do |i|
    arr_s_length.times do |j|
      val = arr[i + 1][j + 1]
      val_up = arr[i][j + 1]
      val_r = arr[i + 1][j + 2]
      val_d = arr[i + 2][j + 1]
      val_l = arr[i + 1][j]

      surf += 2 if val.positive?
      surf += val - val_up if val > val_up
      surf += val - val_r if val > val_r
      surf += val - val_d if val > val_d
      surf += val - val_l if val > val_l
    end
  end

  surf
end

surfaceArea(arr)
