Postit::Application.routes.draw do
  root to: 'posts#index'
  get '/about', to: "static#about"

  resources :posts
  resources :categories
  resources :portfolios
end
