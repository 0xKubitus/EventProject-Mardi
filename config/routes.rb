Rails.application.routes.draw do

  root to: 'events#index'

  get 'static_pages/index'
  get 'static_pages/secret'

  devise_for :users

  resources :users 
  
  resources :events do
    resources :attendances
  end



  
  
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
