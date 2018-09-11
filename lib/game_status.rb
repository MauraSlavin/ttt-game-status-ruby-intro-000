# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end



def won?(board)
  winner = false
  WIN_COMBINATIONS.each do |win|
    puts "win: #{win}"
    winner_case = win.all? do |cell|
      puts "(X?) Cell: #{cell}"
      board[cell] == "X"
      puts "cell is X? #{board[cell]}"
    end  # winner_case .all?
    winner = winner | winner_case
    puts "X: winner_case: #{winner_case}; winner: #{winner}"
    winner_case = win.all? do |cell|
      puts "(O?) Cell: #{board[cell]}"
      board[cell] == "O"
    end
    puts "O: winner_case: #{winner_case}; winner: #{winner}"
    winner = winner | winner_case
  end
  winner
end


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
