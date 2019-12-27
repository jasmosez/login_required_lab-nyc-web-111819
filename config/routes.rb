Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'sessions#new', as: 'login'
  post '/', to: 'sessions#create'
  get '/sessions/:name', to: 'sessions#show', as: 'welcome'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get '/secrets/', to: 'secrets#show', as: 'secrets'
end
