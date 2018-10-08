class PlayersController < ApplicationController
  def index
 
        @players = Player.all.paginate(page: params[:page], per_page: 5)
        @parks = Park.all
        @arena = Arena.all.paginate(page: params[:page], per_page: 5)
  end
end
