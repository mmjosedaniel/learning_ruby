# frozen_string_literal: true

arr = [1, 5, 5, 25, 25, 125]
r = 1
num_of_tripets = 0

def factorial(num)
  m = 1
  (num - 1).times { |i| m *= i + 2 }
  m
end

if r == 1
  n = arr.length
  num_of_tripets = factorial(100) / (factorial(3) * factorial(100 - 3))
else
  arr1 = arr.uniq
  arr2 = []

  arr1.map { |a| arr2.push(arr.count(a)) }

  (arr2.length - 2).times do |i|
    num_of_tripets += arr2[i, 3].reduce(:*)
  end
end
p num_of_tripets

p num_of_tripets
