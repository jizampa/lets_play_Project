Rails.application.routes.draw do
  get 'about_page/index'
 get '/letsplay', to: 'letsplay#index', as: 'home'
 get '/letsplay/players', to: 'players#index', as: 'players'
 get '/letsplay/players/:name', to: 'players#index'

 get '/letsplay/about', to: 'about_page#index', as: 'about'

end
