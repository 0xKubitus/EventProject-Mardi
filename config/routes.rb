Rails.application.routes.draw do

  devise_for :users


  resources :users, only: [:new, :create, :show, :index, :destroy]
  
  resources :events, only: [:new, :create, :show, :index, :destroy] do
    resources :attendances, only: [:new, :create, :show, :index, :destroy]
  end
  
  
  root to: 'events#index'
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
