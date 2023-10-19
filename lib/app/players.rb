class Players
  attr_reader :name, :value

  def initialize(name, value)
    @name = name    # Attribue le nom passé en paramètre au joueur
    @value = value  # Attribue la valeur ("X" ou "O") passée en paramètre au joueur
  end

  # ---

  def self.get_players_names     # Méthode de classe pour obtenir les noms des joueurs et initialiser leurs instances
    system("clear") # Clear the terminal
    puts "\nPlayer 1, please indicate your name:"
    print "> "
    name_player1 = gets.chomp

    puts "\nPlayer 2, please indicate your name as well:"
    print "> "
    name_player2 = gets.chomp

    player1 = Players.new(name_player1, "X")
    player2 = Players.new(name_player2, "O")

    sleep(0.25)
    puts "\nWelcome #{player1.name} (#{player1.value}) and #{player2.name} (#{player2.value})!"
    sleep(0.5)
    puts "Let's play TicTacToe!"
    sleep(0.5)
    puts "Good luck & have fun!"
    sleep(0.5)

    [player1, player2]  # This returns the array of players.
  end

  # ---
end   # Players class ends here
