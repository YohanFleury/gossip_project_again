class AccueilController < ApplicationController
  def index
    @gossips= Gossip.all
    puts "hello du serveur"
    puts "voici les titres des gossips : #{@gossips}"
  end
end
