class ShowBoard
  def self.coordinates_mapping
    {
      "a1" => 0, "a2" => 1, "a3" => 2,
      "b1" => 3, "b2" => 4, "b3" => 5,
      "c1" => 6, "c2" => 7, "c3" => 8
    }
  end

  # ---

  def show_board(board)
    puts "\n    1   2   3"
    puts "  +---+---+---+"

    board.cases.each_slice(3).with_index do |row, i|
      print "#{(i + 65).chr} |"  # Convertit l'index en lettres : 0 -> A, 1 -> B, etc.
      row.each { |cell| print " #{cell.value} |" }
      puts "\n  +---+---+---+\n"  # Ajoute un retour à la ligne pour espacer les rangées
    end
  end

  # ---

  def game_status(board)
    # Conditions pour gagner
    winning_combinations = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], # lignes horizontales
      [0, 3, 6], [1, 4, 7], [2, 5, 8], # lignes verticales
      [0, 4, 8], [2, 4, 6]  # diagonales
    ]

    winning_combinations.each do |combo|
      if board.cases[combo[0]].value == board.cases[combo[1]].value &&
          board.cases[combo[1]].value == board.cases[combo[2]].value &&
          board.cases[combo[0]].value != " "
        return "#{board.cases[combo[0]].value} a gagné !"
      end
    end

    # Condition pour une partie nulle
    if board.cases.all? { |cell| cell.value != " " }
      return "C'est une égalité !"
    end

    # Si aucune condition n'est remplie (cela n'arrivera jamais)
    nil
  end
end
