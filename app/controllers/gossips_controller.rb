class GossipsController < ApplicationController
  def index
    @gossips_all = Gossip.all
  end

  def show
    
    
  end

  def new
    print 'SELF dans le new : '
    puts self
    @gossip = Gossip.new
    @total_gossip = Gossip.count
  end

  def create
    @gossip = Gossip.new
    @gossip.title = params["gossip_title"]
    @gossip.content = params["gossip_content"]
    @gossip.user = User.find_by(id:11)
   
    

    if @gossip.save
      #ecrire la redirection vers page accueil
      redirect_to '/accueil'
    else 
      #ecrire la redirection vers la page de formulaire de creation avec les vlaeurs 
      render action: 'new'
    end
  end

  def edit
    @gossip = Gossip.find_by(id:params[:id])
  end

  def update
    @gossip = Gossip.find_by(id:params["gossip_id"])
    @gossip.title = params["gossip_title"]
    @gossip.content = params["gossip_content"]  

    if @gossip.save 
      #ecrire la redirection vers page accueil
      redirect_to '/accueil'
    else 
      #ecrire la redirection vers la page de formulaire de creation avec les vlaeurs 
      render action: 'new'
    end
  end

  def destroy
  end
end
