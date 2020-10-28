class AccueilController < ApplicationController

  def index
    @gossips= Gossip.all
   
  end
end
