require 'gossip'
require 'view'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    all_gossip = Gossip.all
    @view.index_gossips(all_gossip)
  end

  #repo Vanak
  def destroy
    all_gossips = Gossip.all
    params = @view.destroy(all_gossips)
    Gossip.save_after_destroy(params)
  end
end
