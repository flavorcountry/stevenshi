Postit::Application.routes.draw do
  root to: 'posts#index'
  get '/about', to: "static#about"
  get '/archive', to: 'static#archive'

  resources :posts
  resources :categories
  resources :portfolios
end
