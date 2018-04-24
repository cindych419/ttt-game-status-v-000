# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
]# Define your WIN_COMBINATIONS constant
if board[index[0]] == "X" && board[index[1]] == "X" && board[index[2]] == "X"
  board[index[0]],  board[index[1]],  board[index[2]]
end
