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
