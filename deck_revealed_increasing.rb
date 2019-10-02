# frozen_string_literal: true

deck = [17, 13, 11, 2, 3, 5, 7]

def deck_revealed_increasing(deck)
  deck.sort!
  result = []

  result.unshift(deck.pop)

  deck.reverse_each do |val|
    temp = result.pop
    result.unshift(temp)
    result.unshift(val)
  end

  p result
end

deck_revealed_increasing(deck)
