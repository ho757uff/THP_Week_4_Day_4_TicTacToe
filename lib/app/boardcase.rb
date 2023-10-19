class BoardCase
  attr_accessor :value, :id

  def initialize(id, value = " ")
    @id = id         # Identifiant de la case (par exemple de 1 à 9 pour un plateau de Morpion 3x3)
    @value = value   # La valeur initiale sera vide (" "), et elle peut ensuite être changée en "X" ou "O" pendant le jeu
  end

  case1 = BoardCase.new(1)  # Crée une case avec l'ID 1 et une valeur vide
  case2 = BoardCase.new(2, "X") # Crée une case avec l'ID 2 et la valeur "X"

  puts case1.id    # Affiche 1
  puts case1.value # Affiche " "
  puts case2.id    # Affiche 2
  puts case2.value # Affiche "X"

  def perform
    initialize
  end

  # ---
end # Boardcase class ends here