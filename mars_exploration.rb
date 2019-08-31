# frozen_string_literal: true

s = 'SOSOOSOSOSOSOSSOSOSOSOSOSOS'

def marsExploration(s)
  s_length = s.length
  message = 'SOS'
  count = 0
  i = 0
  while i < s_length
    count += 1 if s[i] != message[0]
    count += 1 if s[i + 1] != message[1]
    count += 1 if s[i + 2] != message[2]
    i += 3
  end
  p count
end

marsExploration(s)
