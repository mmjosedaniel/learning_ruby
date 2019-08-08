# frozen_string_literal: true

def fib(int_n)
  if int_n <= 0
    return 0
  elsif int_n == 1
    return 1
  else
    return fib(int_n - 1) + fib(int_n - 2)
  end
end

20.times { |i| p fib(i) }
