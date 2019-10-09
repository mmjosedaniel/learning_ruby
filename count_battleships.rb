# frozen_string_literal: true

board = [['X', '.', '.', 'X'], ['.', '.', '.', 'X'], ['.', '.', '.', 'X']]

# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
  add_border(board)
  p find_ships(board)
end

def add_border(board)
  board_len = board[0].length

  board.push(Array.new(board_len) { 'O' })

  board.each do |val|
    val.push('O')
  end
  board
end

def find_ships(board)
  rows = board.length - 1
  cols = board[0].length - 1
  count = 0

  rows.times do |i|
    cols.times do |j|
      next if board[i][j] != 'X'

      board[i][j] = 'D'
      count += 1
      k = 1

      if board[i][j + 1] == 'X'
        loop do
          board[i][j + k] = 'D'
          k += 1
          break if board[i][j + k] != 'X'
        end
      elsif board[i + 1][j] == 'X'
        loop do
          board[i + k][j] = 'D'
          k += 1
          break if board[i + k][j] != 'X'
        end
      end
    end
  end
  count
end

count_battleships(board)
