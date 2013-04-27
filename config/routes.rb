Postit::Application.routes.draw do
  root to: 'posts#index'
  get '/about', to: "static#about"
  get '/portfolio', to: "static#portfolio"

  resources :posts
  resources :categories
end
