Rails.application.routes.draw do
  resources :leaflets
  devise_for :users
  root to: 'leaflets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
