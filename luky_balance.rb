# frozen_string_literal: true

contests = [[13, 1], [10, 1], [9, 1], [8, 1], [13, 1], [12, 1], [18, 1], [13, 1]]
k = 5

arr1 = []
arr2 = []
contests.map { |a| a[1] == 1 ? arr1.push(a[0]) : arr2.push(a[0]) }
arr1.sort!
arr2 += arr1.pop(k) # adding important contests to lose

int1 = arr1.reduce { |sum, a| sum + a }
int2 = arr2.reduce { |sum, a| sum + a }
result = int2 - int1

p int1
p int2
p result
