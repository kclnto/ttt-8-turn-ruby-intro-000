def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input = input.to_i
  input = input -1
  index = input
end


def move(board, index, player = "X")
  if (valid_move?(board, index) == TRUE)
    board[index] = player
  else
    puts "Please enter 1-9:"
    input = gts.strip
    input_to_index(input)
    index = input.to_i
  end
end


def valid_move?(board, index)
  if index.between?(0, 8)
    TRUE
    if (position_taken?(board, index) == TRUE)
      FALSE
    else
      TRUE
    end
  else
    FALSE
  end
end

  
def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "")
    FALSE
  elsif (board[index] == NIL)
    FALSE
  else
    TRUE
  end
end

def turn(board) 
  while (position_taken?(board,index) == TRUE) || (valid_move?(board,index) == FALSE)
    turn(board)
  end

  #input_to_index(input)
  #move(board, index, player = "X")
  #valid_move?(board, index)
  #position_taken?(board, index)
end