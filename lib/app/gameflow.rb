class GameFlow
  attr_accessor :current_player, :status, :board, :players

  # ---

  def initialize
    @players = [Player.new("X"), Player.new("O")]     # Crée nos 2 joueurs
    @board = Board.new     # Crée le board
    @status = "on going"   # Met le status à "on going"

    @current_player = @players[0]  # Défini un current_player (on commence par le premier joueur par exemple)
  end

  # ---

  def game_turn
    # Affiche le plateau
    # Ici, on pourrait ajouter une méthode pour afficher le plateau, par exemple : ShowBoard.new(@board).display

    # Demande au joueur ce qu'il joue
    # Vous pouvez implémenter une logique qui prend une entrée de l'utilisateur et la joue sur le plateau

    # Vérifie si un joueur a gagné
    # Si un joueur a gagné, mettez à jour la variable @status et terminez le tour

    # Passe au joueur suivant si la partie n'est pas finie
    @current_player = (@current_player == @players[0]) ? @players[1] : @players[0]
  end

  # ---

  def game_ends     # Gère la fin de partie
    @status = "finished"
    # Autres logiques pour gérer la fin de jeu, comme afficher le vainqueur ou indiquer un match nul
  end

  # ---

  def new_round     # Relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.

    @board = Board.new
    @status = "on going"
  end
end
