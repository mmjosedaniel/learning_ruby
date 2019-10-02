# frozen_string_literal: true

arr = ["abcdde", "baccd", "eeabg"]

def gemstones(arr)
  abc = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
    'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'y', 'x', 'z']
  count = 26

  abc.each do |val|
    arr.each do |val_arr|
      unless val_arr.include?(val)
        count -= 1
        break
      end
    end
  end
  p count
end

gemstones(arr)
