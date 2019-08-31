# frozen_string_literal: true

s = "abccddde"
queries = [1, 3, 12, 5, 9, 10]

def weightedUniformStrings(s, queries)
  weights = weights(s)
  weights_length = weights.length
  result = []

  queries.each do |value|
    weights_length.times do |i|
      if (value % weights[i][0]).zero? && (value / weights[i][0]) <= weights[i][1]
        result.push 'Yes'
        break
      elsif i + 1 == weights_length
        result.push 'No'
      end
    end
  end
  p result
end

def weights(s)
  s_ints = s.codepoints.map { |a| a - 96 }
  s_ints_l = s_ints.length
  weights = []
  count = 1
  value = s_ints[0]

  s_ints_l.times do |i|
    value2 = s_ints[i + 1]
    
    if value == value2
      count += 1
    else
      weights.push([value, count])
      value = value2
      count = 1
    end
  end
  weights
end

# def weightedUniformStrings(s, queries)
#   s_ints = range(s)
# 
#   queries.each do |value|
#     if s_ints.include? value
#       p 'Yes'
#     else
#       p 'No'
#     end
#   end
# end
# 
# def range(s)
#   s_ints = s.codepoints.map { |a| a - 96 }
#   s_ints_l = s_ints.length
#   weights = []
#   count = 1
#   value = s_ints[0]
# 
#   s_ints_l.times do |i|
#     value2 = s_ints[i + 1]
#     
#     if value == value2
#       count += 1
#     else
#       count.times do |j|
#         weights.push(value * (j + 1))
#       end
#       value = value2
#       count = 1
#     end
#   end
#   weights. uniq
# end

weightedUniformStrings(s, queries)
