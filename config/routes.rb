Rails.application.routes.draw do
  root 'lifeguards#index'
  resources :lifeguards do
    resources :sections, only: [:index]
  end
  resources :sections, only: [:index]
end
