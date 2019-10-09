# frozen_string_literal: true

words = ["badc","abab","dddd","dede","yyxx"]
pattern = "baba"
# @param {String[]} words
# @param {String} pattern
# @return {String[]}
def find_and_replace_pattern(words, pattern)
  p_code = code_word(pattern)
  result = []

  words.each do |val|
    result.push(val) if code_word(val) == p_code
  end
  p result
end

def code_word(word)
  code = []
  count = 0
  hash = {}
  word.chars.each do |val|
    unless hash.include?(val)
      hash.store(val, count)
      count += 1
    end
    code.push(hash[val])
  end
  code
end

find_and_replace_pattern(words, pattern)
