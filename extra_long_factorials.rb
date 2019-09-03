# frozen_string_literal: true

n = 25
# 15511210043330985984000000

def extraLongFactorials(n)
  i = 2
  factorial = 1

  while i <= n
    factorial *= i
    i += 1
  end
  p factorial
end

extraLongFactorials(n)
