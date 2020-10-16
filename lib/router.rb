require 'controller'

class Router
  
  def initialize
    @controller = Controller.new
  end

  def perform
    puts "Welcome to The Gossip Project"
    while true
      puts "Tu veux faire quoi jeune mouss' ?"
      puts "1. Je veux créer un gossip"
      puts "2. Afficher les gossips"
      puts "3. Supprimer un gossip"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i 

      case params 
      when 1 
        puts "tu as choisi de créer un gossip"
        @controller.create_gossip
      when 2 
        puts "Tu veux afficher tous les potins" 
        @controller.index_gossips
      when 3
        puts "Tu veux supprimer un potin" 
        @controller.destroy
      when 4
        puts "à bientôt pour un prochain gossip XoXo!"
        break
      else
        puts "Ce choix n'éxiste pas ;)"
      end
    end
  end
end
