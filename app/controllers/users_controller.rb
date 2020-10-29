class UsersController < ApplicationController
    def index
        
    end
    def new
        @user = User.new
    end
   
    def create
            @user = User.new
            @user.email = params["user_email"]
            @user.password = params["user_password_digest"]
            @user.city= City.find_by(id: 3)
   
    if @user.save
      #ecrire la redirection vers page accueil
      redirect_to '/accueil'
    else 
      #ecrire la redirection vers la page de formulaire de creation avec les vlaeurs 
      render action: 'new'
    end
         
    end
end
