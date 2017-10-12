Rails.application.routes.draw do

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#show'

  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
