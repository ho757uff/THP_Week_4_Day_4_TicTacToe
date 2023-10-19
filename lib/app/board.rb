class Board
  attr_accessor :cases
  
  def initialize
    @cases = []
    9.times { |i| @cases << BoardCase.new(i+1) }
  end
  
  # ---
end # Board class ends here