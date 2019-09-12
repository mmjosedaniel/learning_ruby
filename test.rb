# frozen_string_literal: true

def atm(withdraw, cash)
  charges = 0.50

  if withdraw > (cash - charges)
    puts "%0.2f" %cash
  elsif withdraw % 5 != 0
    puts "%0.2f" %cash
  else
    puts "%0.2f" %(cash - withdraw - charges)
  end
end
arr = gets.split
withdraw = arr[0].to_f
cash = arr[1].to_f

atm(withdraw, cash)
