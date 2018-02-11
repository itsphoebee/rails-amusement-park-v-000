Rails.application.routes.draw do
  root 'application#home'
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :rides, only:[:create]
  resources :users, :attractions

end
