class AccueilController < ApplicationController

  def index
    @gossips= Gossip.all.order(updated_at: :desc)
   
  end
end
