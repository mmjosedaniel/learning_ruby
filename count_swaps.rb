# frozen_string_literal: true

a = [3, 1, 2]

def countSwaps(a)
  a_length = a.length
  count = 0
  a_length.times do
    (a_length - 1).times do |j|
      if a[j] > a[j + 1]
        a[j], a[j + 1] = a[j + 1], a[j]
        count += 1
      end
    end
  end
end

countSwaps(a)

p a
