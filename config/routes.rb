Rails.application.routes.draw do

#  get '/letsplay', to: 'letsplay#index', as: 'home'
#  get '/letsplay/players', to: 'players#index', as: 'players'

#  get '/letsplay/players/:name', to: 'players#index'
get '/about', to: 'about_page#index'
resources :players, only: [:index, :show]
 
root to: "letsplay#index"
end
