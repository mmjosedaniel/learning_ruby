# frozen_string_literal: true

d = 3
arr = [1, 2, 4, 5, 7, 8, 10]

def beautifulTriplets(d, arr)
  count =  0
  arr.each do |value|
    second = value + d
    thirth  = second + d
    count += 1 if arr.include?(second) and arr.include?(thirth)
  end
  p count
end

beautifulTriplets(d, arr)
