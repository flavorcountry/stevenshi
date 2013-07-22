Postit::Application.routes.draw do
  root to: 'posts#index'
  get '/about', to: "static#about"
  get '/archive', to: 'static#archive'
  get '/destroy_confirmation', to: "posts#destroy_confirmation"

  resources :posts
  resources :categories
  resources :portfolios
end
