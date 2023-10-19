class BoardCase
  attr_accessor :value, :id

  def initialize(id, value = " ")
    @id = id         # Identifiant de la case (par exemple de 1 à 9 pour un plateau de Morpion 3x3)
    @value = value   # La valeur initiale sera vide (" "), et elle peut ensuite être changée en "X" ou "O" pendant le jeu
  end
  # ---
end # Boardcase class ends here