Rails.application.routes.draw do

  resources :favorites
  resources :articles, only: [:index]
  resources :sports, only: [:index]
  resources :entertainment, only: [:index]
  resources :technology, only: [:index]

end
