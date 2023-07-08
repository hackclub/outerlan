Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "index#index"

  get '/domains', to: 'index#domains'
  get '/support', to: 'index#support'
  get '/tilde', to: 'index#tilde'
end
