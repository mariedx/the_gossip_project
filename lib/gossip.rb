# require 'pry'
require 'csv'

class Gossip
  attr_reader :author, :content
  
  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv", "a+") do |csv|
      csv << [@author, @content]
      end
  end

  #repo vanak
  def self.save_after_destroy(all_gossips)
    CSV.open("db/gossip.csv", "w") do |csv|
      all_gossips.each do |gossip|
        csv << [gossip.author, gossip.content]
      end
    end
  end

  def self.all
    all_gossip = []
    file = CSV.read("db/gossip.csv")
    file.each do |ligne|
    gossip_provisoire = Gossip.new(ligne[0], ligne[1])
    all_gossip << gossip_provisoire
    end
    return all_gossip
  end 
end

# binding.pry