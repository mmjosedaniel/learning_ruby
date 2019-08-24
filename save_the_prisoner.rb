# frozen_string_literal: true

n = 8
m = 863_472_675
s = 5

def saveThePrisoner(n, m, s)
  mod = (m + s - 1)

  if mod > n
    if (mod % n).zero?
      p n
    else
      p mod % n
    end
  else
    p mod
  end
end

saveThePrisoner(n, m, s)
