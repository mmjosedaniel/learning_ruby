# frozen_string_literal: true

strings = ["aba", "baba", "aba", "xzxb"]

queries = ["aba", "xzxb", "ab"]

def matchingStrings(strings, queries)
  arr_result = []

  queries.each do |val|
    arr_result.push(strings.count(val))
  end
  p arr_result
end

matchingStrings(strings, queries)
