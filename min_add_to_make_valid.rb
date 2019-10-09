# frozen_string_literal: true
s = "())"
# @param {String} s
# @return {Integer}
def min_add_to_make_valid(s)
  s_chars = s.chars
  s_len = s_chars.length
  i = 0

  while i < (s_len - 1)
    j = i + 1
    if s_chars[i] == ')'
      i += 1
      next
    end
    while j < s_len
      if s_chars[j] == ')'
        s_chars.delete_at(j)
        s_chars.delete_at(i)
        s_len -= 2
        i -= 1
        break
      end
      j += 1
    end
    i += 1
  end
  s_chars.count
end
