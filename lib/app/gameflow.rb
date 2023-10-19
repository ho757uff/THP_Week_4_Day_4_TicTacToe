class GameFlow
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

end


puts "Bienvenue dans le jeu du morpion !"
puts "Joueur 1, quel est ton nom ?"
print "> "
name_player1 = gets.chomp
puts "Joueur 2, quel est ton nom ?"
print "> "
name_player2 = gets.chomp
puts "Bienvenue #{name_player1} et #{name_player2} !"
puts "Voici le plateau de jeu :"
puts "   1   2   3"
puts "A  -   -   -"
puts "B  -   -   -"
puts "C  -   -   -"
puts "C'est parti !"
puts "Joueur 1, choisis une case :"
print "> "
choice_player1 = gets.chomp
puts "Joueur 2, choisis une case :"
print "> "
choice_player2 = gets.chomp
puts "Voici le nouveau plateau de jeu :"
puts "   1   2   3"
puts "A  -   -   -"
puts "B  -   -   -"
puts "C  -   -   -"
puts "Joueur 1, choisis une case :"
print "> "
choice_player1 = gets.chomp
puts "Joueur 2, choisis une case :"
print "> "
choice_player2 = gets.chomp
puts "Voici le nouveau plateau de jeu :"
puts "   1   2   3