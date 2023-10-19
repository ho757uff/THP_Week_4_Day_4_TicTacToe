class GameFlow
  attr_accessor :current_player, :status, :board, :players, :round_counter

  # ---

  def initialize
    @players = Players.get_players_names
    @board = Board.new
    @status = "on going"
    @round_counter = 0
  end

  # ---

  def game_round_starts
    @current_player = @players[0]  # Définit p1 comme current_player
    @round_counter += 1
    puts "\nStarting round n° #{round_counter}..."

    sleep(0.5)
    player_turn_starts
  end

  # ---

  def player_turn_starts
    ShowBoard.new.show_board(@board) # Display the board

    valid_input = false
    until valid_input
      puts "\n#{@current_player.name}, please select a cell's coordinates on the grid above or type 'exit' to quit:"
      print "> "
      choice = gets.chomp.downcase

      # Check for the 'exit' command
      if choice == "exit"
        puts "Thanks for playing! Goodbye!"
        exit
      end

      # Accessing the mapping from ShowBoard
      mapping = ShowBoard.coordinates_mapping

      # Check if the choice is valid and if the chosen cell is empty
      if mapping.key?(choice) && @board.cases[mapping[choice]].value == " "
        @board.cases[mapping[choice]].value = @current_player.value
        valid_input = true
      else
        puts "Invalid choice or cell is already taken. Please try again."
      end
    end

    player_turn_ends
  end

  # ---

  def player_turn_ends
    system("clear") # Clear the terminal
    result = ShowBoard.new.game_status(@board)
    if result == "#{current_player.value} has won !"
      @status = "finished_with_winner"
      game_round_ends
    elsif result == "It's a draw !"
      @status = "finished_with_draw"
      game_round_ends
    else
      @current_player = (@current_player == @players[0]) ? @players[1] : @players[0]
      player_turn_starts
    end
  end

  # ---

  def game_round_ends
    ShowBoard.new.show_board(@board)  # Affiche le plateau final

    if @status == "finished_with_winner"
      puts "\n#{@current_player.name} has won this round!"
    elsif @status == "finished_with_draw"
      puts "\nIt's a draw!"
    end
    sleep(0.5)

    puts "\nWould you like to play again? (Y/N)" # Demande si le joueur souhaite rejouer
    input = ""

    until ["Y", "N"].include?(input)
      print "> "
      input = gets.chomp.upcase
      if input == "Y" # Si oui, relance une partie
        system("clear") # Clear the terminal
        new_game_round
      end
      if input == "N" # Si non, quitte le jeu
        puts "Thanks for playing my game!"
        exit
      elsif input != "Y" # Si autre chose, demande de réessayer
        puts "I'm sorry but I did not understand your answer."
        puts "Would you like to play again? (Y/N)"
      end
    end
  end

  # ---

  def new_game_round     # Relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs
    @board = Board.new
    @status = "on going"
    game_round_starts
  end

  # ---

  def perform
    game_round_starts # Lance une partie
  end

  # ---
end   # Gameflow class ends here
