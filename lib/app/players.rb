class Players
  attr_reader :name, :value
  
  def initialize(name, value)
    @name = name
    @value = value
  end
end

puts "Player 1, please indicate your name :"
print "> "
name_player1 = gets.chomp

puts "Player 2, please indicate your name as well :"
print "> "
name_player2 = gets.chomp

player1 = Players.new(name_player1, "X")
player2 = Players.new(name_player2, "O")

puts "Welcome #{player1.name} (#{player1.value}) and #{player2.name} (#{player2.value}) !"
puts "Let's play TicTacToe !"
puts "Good luck ! Have fun !"