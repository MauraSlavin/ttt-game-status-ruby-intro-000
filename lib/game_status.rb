# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end



def won?(board)
  winner = []
  WIN_COMBINATIONS.each do |win|
    puts "win: #{win}"
    winner_case = win.all? do |cell|
      puts "(X?) Cell: #{cell}"
      puts "cell is X? #{board[cell] == "X"}"
      board[cell] == "X"
    end  # winner_case .all?
    if winner_case winner = win end # of if
    puts "X: winner_case: #{winner_case}; winner: #{winner}"
  end # of WIN_COMBINATIONS each
  winner
end # of def winner?


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]
