def rotLeft(a, d)
  # a.drop(d) + a[0, d] # This one is better
  keeper = 0
  d.times do
    keeper = a.shift
    a.push(keeper)
  end
  a
end