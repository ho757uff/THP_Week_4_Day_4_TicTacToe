class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    game_over = false
    game_counter = 0
    
    puts "Welcome to my TicTacToe game !"

    while game_over == false
      game_counter += 1
      puts "Starting game n° #{game_counter}..."
      #GameFlow.new
      puts "Would you like to play again? (Y/N)"
      input = ""

      until ["Y", "N"].include?(input)
        print "> "
        input = gets.chomp.upcase

        if input == "N"
          puts "Thanks for playing my game!"
          game_over = true
        elsif input != "Y"
          puts "I'm sorry but I did not understand your answer."
          puts "Would you like to play again? (Y/N)"
        end
      end
    end
  end
end

# Application.new.perform
