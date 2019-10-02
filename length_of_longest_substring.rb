# frozen_string_literal: true

s = "ohvhjdml"

def length_of_longest_substring(s)
  arr = []
  sub_length = 0
  s_length = s.length

  s_length.times do |i|
    val = s[i]
      if !arr.include?(val)
        arr.push(val)
        arr_length = arr.length
        sub_length = arr_length if sub_length < arr_length
      else
        arr = arr[(arr.index(val) + 1)..-1]
        redo
      end
  end
  p sub_length
end

length_of_longest_substring(s)
