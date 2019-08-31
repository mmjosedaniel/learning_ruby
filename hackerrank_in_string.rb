# frozen_string_literal: true

s = 'hhaacckkekraraannk'

def hackerrankInString(s)
  s_length =  s.length
  arr = ['h', 'a', 'c', 'k', 'e', 'r', 'r', 'a', 'n', 'k']

  s_length.times do |i|
    arr.shift if s[i] == arr[0]
    break if arr.empty?
  end
  if arr.empty?
    p 'YES'
  else
    p 'NO'
  end
end

hackerrankInString(s)
