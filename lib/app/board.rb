class Board
  attr_accessor :cases

  def initialize
    @cases = []
    # Remplit le tableau @cases avec 9 instances de la classe BoardCase
    # Chaque case aura un identifiant allant de 1 à 9
    9.times { |i| @cases << BoardCase.new(i + 1) }
  end

  # ---
end # Board class ends here
