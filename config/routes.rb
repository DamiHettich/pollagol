Rails.application.routes.draw do
  resources :pollas
  resources :bets
  resources :matches
  resources :teams
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get '/about', to: 'home#about'
  get '/user' => "matches#index", :as => :user_root       #redirecting to matches#index after successful login
end
