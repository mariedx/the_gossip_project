class View
  attr_accessor :author, :content

  def create_gossip
    puts "Quel est ton nom?"
    print "> "
    @author = gets.chomp
    puts "Quel est ton gossip crousti aujourd'hui ?"
    @content = gets.chomp
    return {content: @content, author: @author}
  end

  def index_gossips(all_gossips)
    all_gossips.each do |gossip|
    puts "#{gossip.author} #{gossip.content}"
    end 
  end

  def destroy(all_gossips)
    puts "Quel gossip veux tu retirer ?"
    puts "Entre la valeur correspondante : "
    puts
    all_gossips.each_with_index do |gossip, i|
      puts "#{i+1} - #{gossip.author} : #{gossip.content}"
    end
    puts 
    params = gets.chomp.to_i 
    all_gossips.delete_at(params-1)
    sleep 1
    return all_gossips
  end
end

