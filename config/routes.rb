Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  resources :articles
  get 'home' => 'home#index'
  get 'users/:id' => 'users#show'

end
