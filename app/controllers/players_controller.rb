class PlayersController < ApplicationController
  def index
 
        @players = Player.all.paginate(page: params[:page], per_page: 7)
        @parks = Park.all
        @arena = Arena.all.paginate(page: params[:page], per_page: 8)
  end
end
