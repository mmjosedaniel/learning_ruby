# frozen_string_literal: true

# w = 'dhck'
# w = 'bb'
w = 'dkhc'

def biggerIsGreater(w)
  w_size = w.size
  i = w_size - 1
  j = i
  w_chars = w.chars
  message = 'no answer'

  while i.positive?
    if w_chars[i - 1] < w_chars[i]
      swap_smaller(j, i, w_chars)
      message = (w_chars[0, i] + w_chars[i, w_size - i].sort).join
      break
    end
    i -= 1
  end

  p message
end

def swap_smaller(j, i, w_chars)
  while j.positive?
    if w_chars[j] > w_chars[i - 1]
      w_chars[i - 1], w_chars[j] = w_chars[j], w_chars[i - 1]
      break
    end
    j -= 1
  end
end

biggerIsGreater(w)

# *Time limit
# def biggerIsGreater(w)
#   w_size =  w.size
#   w_chars = w.chars
#   result = w_chars.permutation(w_size).to_a.map(&:join)
#                   .delete_if { |v| v <= w }.min
#
#   if result.nil?
#     p 'no answer'
#   else
#     p result
#   end
# end
