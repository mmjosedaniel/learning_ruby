

s = 'middle-Outz'
k = 2
def caesarCipher(s, k)
  original_alphabet = 'abcdefghijklmnopqrstuvwxyz'
  alphabet_rotated = original_alphabet.chars.rotate(k).join

  s.tr!(original_alphabet, alphabet_rotated)
  p s.tr(original_alphabet.upcase, alphabet_rotated.upcase)
end

caesarCipher(s, k)
