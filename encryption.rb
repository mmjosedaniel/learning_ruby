# frozen_string_literal: true

s = "feedthedog"

def encryption(s)
  arr = break_sentence(s)
  p arr.transpose.map { |v| v.join.rstrip }.join(' ')
end

def break_sentence(s)
  s_size = s.size
  s_sqrt_ceil = Math.sqrt(s_size).ceil
  s_chars = s.chars
  s_chars += ([' '] * ((s_sqrt_ceil * s_sqrt_ceil) - s_size))

  arr = []

  s_sqrt_ceil.times do |i|
    arr.push(s_chars[i * s_sqrt_ceil, s_sqrt_ceil])
  end

  arr.delete_at(-1) if arr.last == ([' '] * s_sqrt_ceil)

  arr
end

encryption(s)
