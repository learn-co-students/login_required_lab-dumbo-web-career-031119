Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get '/new', to: 'sessions#new'
  post '/new', to: 'sessions#create'
  get '/show', to: 'secrets#show'
  post '/show', to: 'sessions#destroy'
end
