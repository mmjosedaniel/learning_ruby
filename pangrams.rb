# frozen_string_literal: true

s = 'We promptly judged antique ivory buckles for the next prize'

def pangrams(s)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  26.times do |i|
    return p 'not pangram' unless s.downcase.include?(alphabet[i])
  end
  p 'pangram'
end

pangrams(s)
