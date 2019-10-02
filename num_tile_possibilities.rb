# frozen_string_literal: true

require 'set'
tiles = "AAB"

def num_tile_possibilities(tiles)
  set = Set[]
  titles_len = tiles.length

  titles_len.times do |i|
    set.merge(tiles.chars.permutation(i + 1).to_set)
  end

  p set.count
end

num_tile_possibilities(tiles)
