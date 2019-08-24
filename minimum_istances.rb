# frozen_string_literal: true

a = [7, 1, 3, 4, 1, 7]

def minimumDistances(a)
  result = 0
  while result.zero?
    break if a.empty?

    temp = a.rindex(a[0]) - a.index(a[0])
    result = temp
    a.shift
  end
  a.each do |element|
    temp = a.rindex(element) - a.index(element)
    result = temp if temp < result && temp != 0
  end
  if result != 0
    p result
  else
    p -1
  end
end

minimumDistances(a)
