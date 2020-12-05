Rails.application.routes.draw do

  resources :articles, only: [:index]
  resources :sports, only: [:index]

end
