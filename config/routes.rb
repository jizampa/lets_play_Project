Rails.application.routes.draw do
  get 'about_page/index'
 get '/letsplay', to: 'letsplay#index'
 get '/letsplay/players', to: 'players#index', as: 'players'
 get '/letsplay/about', to: 'about_page#index', as: 'About'

end
