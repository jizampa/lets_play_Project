class PlayersController < ApplicationController
  def index
 
        @players = Player.all.paginate(page: params[:page], per_page: 5)
        @parks = Park.all
        @arena = Arena.all.paginate(page: params[:page], per_page: 5)

        @players_searched = Player.where("name LIKE ?", "%#{params[:q]}%").paginate(page: params[:page], per_page: 9)
        
  end

  def show
     @players_searched = Player.find(params[:id])
  end


end
