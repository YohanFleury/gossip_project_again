class GossipsController < ApplicationController

  def index
    @gossips_all = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id]) 
       
    
  end

  def new
    @gossip = Gossip.new
    
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
    
    @gossip = Gossip.find(params[:id])
    gossip_params = params.require(:gossip).permit(:title, :content)
    @gossip.update(gossip_params)
    
    if @gossip.update(gossip_params) 
      #ecrire la redirection vers page accueil
      redirect_to @gossip
    else 
      #ecrire la redirection vers la page de formulaire de creation avec les vlaeurs 
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find_by(id:params[:id])
    @gossip.destroy
    redirect_to accueil_path
  end
end
