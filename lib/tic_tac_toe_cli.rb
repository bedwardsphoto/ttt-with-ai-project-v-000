class TicTacToeCLI

    def initialize
    end

    def call
      puts "Welcome to Tic Tac Toe!"
      puts "Please choose a play mode"
      puts "Enter 2 for two players"
      puts "Enter 1 to play against the computer"
      puts "Enter 0 to sit back and let the robots do the heavy lifting."

      player_types
    end

    def player_types
      input=gets.strip
      if input=="2"
        game= Game.new
        game.play
      elsif input=="1"
        which_player
      elsif input=="0"
        game=Game.new(Player::Computer.new("X"), Player::Computer.new("O"), Board.new)
        game.play
      else
        puts "Please enter a '2', '1', or '0'."
        player_types
      end
      play_again
      end



    def which_player
      puts "Which player would you like to be? 'X' or 'O'? The 'X' player starts the game."
      input2=gets.strip
      if input2== "X" || input2=="x"
        game= Game.new(Player::Human.new("X"), Player::Computer.new("O"),Board.new)
        game.play
      elsif input2=="O" || input2=="o"
        game= Game.new(Player::Computer.new("X"), Player::Human.new("O"),Board.new)
        game.play
      else
        puts "Please enter either 'X' or 'O'"
        which_player
      end
    end

    def play_again
      puts " "
      puts "Would you like to play again? (Y/N)"
      input=gets.strip
      if input=="Y" || input=="y"
       call
      end
    end
end