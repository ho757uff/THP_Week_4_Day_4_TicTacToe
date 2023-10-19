class ShowBoard
  def show_board(board)
    puts "-------------"
    3.times do |i|
      3.times do |j|
        print "| #{board.cases[i * 3 + j].value} "
      end
      puts "|"
      puts "-------------"
    end
  end

  def game_status(board)
    # Conditions de victoire
    winning_combinations = [
      [0,1,2], [3,4,5], [6,7,8], # lignes horizontales
      [0,3,6], [1,4,7], [2,5,8], # lignes verticales
      [0,4,8], [2,4,6]  # diagonales
    ]

    winning_combinations.each do |combo|
      if board.cases[combo[0]].value == board.cases[combo[1]].value &&
         board.cases[combo[1]].value == board.cases[combo[2]].value &&
         board.cases[combo[0]].value != " "
        return "#{board.cases[combo[0]].value} a gagné !"
      end
    end

    # Condition de match nul
    if board.cases.all? { |cell| cell.value != " " }
      return "Match nul !"
    end

    # Si aucune condition n'est remplie
    return nil
  end
end