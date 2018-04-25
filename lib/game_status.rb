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
def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
    end
end

def full?(board)
  board.all?{|combo| combo == "X" || combo== "O"}
end
def draw?(board)
  !won?(board) && full?(board)
end
def over?(board)
  draw?(board) || won?(board) && full?(board) || won?(board) && !full?(board)
end
def winner?(board)
  won?(board) && board[comb[0]] == "X"
  puts "X"
  won?(board) && board[comb[0]] == "O"
  puts "O"
  end
end
