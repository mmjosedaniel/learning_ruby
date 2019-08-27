# frozen_string_literal: true

s = "acdqglrfkqyuqfjkxyqvnrtysfrzrmzlygfveulqfpdbhlqdqrrqdqlhbdpfqluevfgylzmrzrfsytrnvqyxkjfquyqkfrlacdqj"

def superReducedString(s)
  s_chars = s.chars
  first_length = 0
  last_length = 1
  
  while first_length != last_length
    first_length = s_chars.length
    s_length = s_chars.length - 1
    s_length.times do |i|
      if s_chars[i] == s_chars[i + 1]
        s_chars.delete_at(i + 1)
        s_chars.delete_at(i)
      end
      redo if s_chars[i] == s_chars[i + 1] && s_chars[i] != nil
      break if s_chars[i] == nil
    end
    last_length = s_chars.length
  end

  if s_chars.empty?
    p 'Empty String'
  else
    p s_chars.join
  end
end

superReducedString(s)
