class PlayersController < ApplicationController
  def index
 
        @players = Player.all
        @parks = Park.all
        @arena = Arena.all
  end
end
