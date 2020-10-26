class TeamController < ApplicationController
  def index
    @random_number = rand(100)
    puts "hello from server, voici le numero magique : #{@random_number}"
  end
end
