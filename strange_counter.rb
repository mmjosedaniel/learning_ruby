# frozen_string_literal: true

t = 10_000_000_000_000

def strangeCounter(t)
  cicle = 3
  while t > cicle
    t -= cicle
    cicle *= 2
  end
  p cicle - t + 1
end

strangeCounter(t)

# def strangeCounter(t)
#   count = 0
#   cicles = 3
#   value = cicles
# 
#   while count < t - cicles
#     count += cicles
#     cicles *= 2
#   end
#   value = cicles
# 
#   while count < t
#     cicles.times do
#       value -= 1
#       count += 1
#       return p value + 1 if count == t
#     end
#     cicles *= 2
#     value = cicles
#   end
# end
