class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    game_over = false
    while game_over == false
      GameFlow.new
    end
    game_over = true
  end
end