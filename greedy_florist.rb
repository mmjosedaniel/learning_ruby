# frozen_string_literal: true

k = 3
c = [2, 5, 6]

c.sort!
c_length = c.length

price_product = (c_length / k.to_f).ceil
buyers_max_price = c_length % k
count = 0

if buyers_max_price != 0
  count += c.shift(buyers_max_price).sum * price_product
  price_product -= 1
end

buy_times = price_product

buy_times.times do
  count += c.shift(k).sum * price_product
  price_product -= 1
end

p count
