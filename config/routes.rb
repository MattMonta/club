Rails.application.routes.draw do
  root to: 'static_page#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'static_page/home', to: 'static_page#home'
  resources :users
  get 'private', to: 'static_page#private'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
