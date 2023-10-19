class BoardCase
  attr_accessor :value, :id

  def initialize(id, value = " ")
    @id = id         # Identifiant de la case (1 à 9 pour un plateau de Morpion 3x3)
    @value = value   # Valeur initiale vide (" "), et elle peut ensuite être changée en "X" ou "O"
  end
  # ---
end # Boardcase class ends here