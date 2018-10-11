Rails.application.routes.draw do

get '/about', to: 'about_page#index'
resources :players, only: [:index, :show]
 
root to: "letsplay#index"
end
