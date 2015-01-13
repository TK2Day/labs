#lookup minimax
 require 'io/console'
 require 'pry'






def title
 puts "clear"

 puts "_____  _   __         _____   __    __         _____  ___   ____
 | |  | | / /`   ___   | |   / /\\  / /`   ___   | |  / / \\ | |_
 |_|  |_| \\_\\_, |___|  |_|  /_/--\\ \\_\\_, |___|  |_|  \\_\\_/ |_|__ "

end

board = (1..9).to_a
WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6]]

def greeting
  puts "\n\n Welcome to Tic Tac Toe! \n\n"
end

def choose_character
  puts "Would you like to play as 'X' or 'O'?"
  result = gets.chomp.upcase
  unless result == 'X' || result == 'O'
    puts "Sillywilly. You can only pick 'X' or 'O'"
    result = gets.chomp.upcase
  end
  puts "\nYou picked #{result}\n"
end

 def show_board
   board = [/^[0-9]$/]
    "  #{board[0]} | #{board[1]} | #{board[2]}
       -------------
       #{board[3]} | #{board[4]} | #{board[5]}
       -------------
       #{board[6]} | #{board[7]} | #{board[8]}
       "

 end






# def board
#   puts "
#
#            |      |
#         1  |   2  |  3
#       _____|______|_____
#            |      |
#         4  |   5  |  6
#       _____|______|_____
#            |      |
#         7  |   8  |  9
#            |      |
#
#   "
# end



def set_board
 #how the hell am i going to draw?
 #figure that shit out


end




def winner?(board)
 WINS.any? do |i, j, k|
  #  w.map { |x| board[x] }.uniq,length == 1
   board[i] == board[j] && board[j] == board[k]
   return board[i]
 end
end

def finished?(board)
  winner?(board) || board.all?{ |x| x.is_a? String }
end


def game_over(board)
 #check for win condintions
 puts "Would you like to play again? y/n?"
  input = STDIN.getch.downcase
  if input == "y"
    select_mode
  elsif input == "n"
    puts "Goodbye!"
    puts exit
  end
end

def take_turn(board)
  show_board(board)
  puts "player #{player}: Please choose a space ..."
  result = gets.chomp
  available = board.select { |x| x.is_a? == Fixnum }
  until result =~ /^[0-9]$/ && available.include?(result.to_i)
    puts "You have to choose an available square!"
    result = gets.chomp
  end
  result.to_i - 1
end



def play_vs(board, player1, player2)
turn_count = 1
until finished?(board)
  player = turn_count.odd? ? player1 : player2
  square = take_turn(board, player)
  board[square] = player
  turn_count += 1
end
end


def play_vsai(board, player1, player2)
  turn_count = 1
  until finished?(board)
    player = turn_count.odd? ? player1 : player2
    if player == player1
      square = take_turn(show_board, player)
      board[square] = player
      turn_count += 1
    end
  end
end


def select_mode(play_vs, play_vsai)
   title
   puts "Select game mode! "
   puts "Press Q for Multiplayer, Press E for Easy mode, Or Leave with L"
    input = STDIN.getch.upcase!

   if input == "Q"
     puts "You have selected Multiplayer! Grab a buddy or play alone. :c"
     #ugh meme referance #1
     play_vs
   elsif input == "E"
     puts "You have selected VS Ai: Easy mode aka: ezpz lemon squeeze "
     play_vsai
  #  elsif input == "N"
  #    pust "AI: Nightmare mode Activated. What have yo-. RESISTANCE IS FUTILE. EXTERMINATE!"
  #    #heh doctor who.
  #    play_vsai
   elsif input == "L"
    puts "exits"

   elsif input.upcase != "Q" || input.upcase != "N" || input.upcase != "E" || input.upcase != "L"
    puts "Not a vaild Character please try again, silly."
   input
  end
    puts "Goodbye!"
 end


def tic_tac_toe(board)
  title
  greeting
  player1 = choose_character
  player2 = player1 == 'X' ? 'O' : 'X'
  next_turn = player2
  select_mode
  until finished?(board)
    player = turn_count.even? ? player1 : player2
    square = take_turn(board, player)
    board[square-1] = player
    turn_count += 1
  end
  game_over(board)
end

tic_tac_toe(board)
