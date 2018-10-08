Rails.application.routes.draw do
 get '/letsplay', to: 'letsplay#index'
 get '/letsplay/players', to: 'players#index', as: 'players'

end
