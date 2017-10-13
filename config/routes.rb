Rails.application.routes.draw do
  get 'mentor_subcats/new'

  # root 'sessions#new'
  root 'categories#index'
  get 'sessions/new'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#show'

  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/newmentor', to: 'mentor_infos#new'
  post '/newmentor', to: 'mentor_infos#create'
  get '/mentorprofile', to: 'mentor_infos#show'

  resources :mentor_infos




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :categories
resources :subcategories

end
