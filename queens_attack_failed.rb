# frozen_string_literal: true

n = 5
k = 3
r_q = 4
c_q = 3
obstacles = [[5, 5], [4, 2], [2, 3]]

def queensAttack(n, k, r_q, c_q, obstacles)
  board = make_board(n, obstacles)
  count = 0

  count += count_up(board, n, r_q, c_q)
  count += count_up_right(board, n, r_q, c_q)
  count += count_right(board, n, r_q, c_q)
  count += count_down_right(board, n, r_q, c_q)
  count += count_down(board, n, r_q, c_q)
  count += count_down_left(board, n, r_q, c_q)
  count += count_left(board, n, r_q, c_q)
  count += count_up_left(board, n, r_q, c_q)

  board.reverse.each do |v|
    p v
  end
  
  p count
end

def make_board(n, obstacles)
  board = Array.new(n) { Array.new(n, 0) }
  obstacles.each do |value|
    board[value[0] - 1][value[1] - 1] = 1
  end
  board[4 - 1][3 - 1] = 2
  board
end

def count_up(board, n, r_q, c_q)
  r_q_temp = r_q
  count = 0
  count_times = n - r_q

  count_times.times do
    r_q_temp += 1
    break if board[r_q_temp - 1][c_q - 1] != 0

    count += 1
  end
  count
end

def count_up_right(board, n, r_q, c_q)
  r_q_temp = r_q
  c_q_temp = c_q
  count = 0
  count_times = [n - r_q, c_q - 1].min

  count_times.times do
    r_q_temp += 1
    c_q_temp -= 1
    break if board[r_q_temp - 1][c_q_temp - 1] != 0

    count += 1
  end
  count
end

def count_right(board, n, r_q, c_q)
  c_q_temp = c_q
  count = 0
  count_times = c_q - 1

  count_times.times do
    c_q_temp -= 1
    break if board[r_q - 1][c_q_temp - 1] != 0

    count += 1
  end
  count
end

def count_down_right(board, n, r_q, c_q)
  r_q_temp = r_q
  c_q_temp = c_q
  count = 0
  count_times = [r_q - 1, c_q - 1].min

  count_times.times do
    r_q_temp -= 1
    c_q_temp -= 1
    break if board[r_q_temp - 1][c_q_temp - 1] != 0

    count += 1
  end
  count
end

def count_down(board, n, r_q, c_q)
  r_q_temp = r_q
  count = 0
  count_times = r_q - 1

  count_times.times do
    r_q_temp -= 1
    break if board[r_q_temp - 1][c_q - 1] != 0

    count += 1
  end
  count
end

def count_down_left(board, n, r_q, c_q)
  r_q_temp = r_q
  c_q_temp = c_q
  count = 0
  count_times = [r_q - 1, n - c_q].min

  count_times.times do
    r_q_temp -= 1
    c_q_temp += 1
    break if board[r_q_temp - 1][c_q_temp - 1] != 0

    count += 1
  end
  count
end

def count_left(board, n, r_q, c_q)
  c_q_temp = c_q
  count = 0
  count_times = n - c_q

  count_times.times do
    c_q_temp += 1
    break if board[r_q - 1][c_q_temp - 1] != 0

    count += 1
  end
  count
end

def count_up_left(board, n, r_q, c_q)
  r_q_temp = r_q
  c_q_temp = c_q
  count = 0
  count_times = [n - r_q, n - c_q].min

  count_times.times do
    r_q_temp += 1
    c_q_temp += 1
    break if board[r_q_temp - 1][c_q_temp - 1] != 0

    count += 1
  end
  count
end

queensAttack(n, k, r_q, c_q, obstacles)
