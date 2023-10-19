class Board
  attr_accessor :cases
    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  
    def initialize
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    end
    @cases = []
    9.times { |i| @cases << BoardCase.new(i+1) }
  end
  
  # ... d'autres méthodes pour gérer le plateau ...

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def game_status
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul

  end
end