class PlayersController < ApplicationController
  def index
 
        @players = Player.all
        @parks = Park.all
  end
end
