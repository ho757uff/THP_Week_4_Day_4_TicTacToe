class GameFlow
  attr_accessor :current_player, :status, :board, :players

  # ---

  def initialize
    @players = Players.get_players_names
    @board = Board.new
    @status = "on going"
  end

  # ---

  def game_round_starts
    @current_player = @players[0]  # Défini p1 comme current_player
    round_counter = 0
    round_counter += 1
    puts "Starting round n° #{round_counter}..."

    player_turn_starts
  end

  # ---

  def player_turn_starts
    ShowBoard.new.show_board(@board) # Display the board
  
    # A mapping of user-friendly coordinates to array indices.
    coordinates_mapping = {
      'a1' => 0, 'a2' => 1, 'a3' => 2,
      'b1' => 3, 'b2' => 4, 'b3' => 5,
      'c1' => 6, 'c2' => 7, 'c3' => 8
    }
  
    valid_input = false
    until valid_input
      puts "#{@current_player.name}, please select a cell (a1, a2, ... , c3):"
      print "> "
      choice = gets.chomp.downcase
  
      # Check if the choice is valid and if the chosen cell is empty
      if coordinates_mapping.key?(choice) && @board.cases[coordinates_mapping[choice]].value == " "
        @board.cases[coordinates_mapping[choice]].value = @current_player.value
        valid_input = true
      else
        puts "Invalid choice or cell is already taken. Please try again."
      end
    end
  
    player_turn_ends
  end
  

  # ---

  def player_turn_ends
    result = ShowBoard.new.game_status(@board)
    if result == "#{current_player.value} a gagné !"
      @status = "finished_with_winner"
      game_round_ends
    elsif result == "Match nul !"
      @status = "finished_with_draw"
      game_round_ends
    else
      @current_player = (@current_player == @players[0]) ? @players[1] : @players[0]
      player_turn_starts
    end
  end

  # ---

  def game_round_ends     # Gère la fin de partie
    if @status == "finished_with_winner"
      puts "#{@current_player} has won this round !"
    elsif @status == "finished_with_draw"
      puts "This is a draw !"
    end
    puts "Would you like to play again? (Y/N)"
    input = ""

    until ["Y", "N"].include?(input)
      print "> "
      input = gets.chomp.upcase
      if input == "Y"
        new_game_round
      end
      if input == "N"
        puts "Thanks for playing my game!"
        exit
      elsif input != "Y"
        puts "I'm sorry but I did not understand your answer."
        puts "Would you like to play again? (Y/N)"
      end
    end
  end

  # ---

  def new_game_round     # Relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    @board = Board.new
    @status = "on going"
    game_round_starts
  end

  # ---

  def perform
    game_round_starts
  end

  # ---
end   # Gameflow class ends here
