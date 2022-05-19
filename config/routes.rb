Rails.application.routes.draw do


  get 'attendances/new'
  get 'attendances/create'
  get 'attendances/show'
  get 'attendances/index'
  root to: 'events#index'

  devise_for :users

  get 'static_pages/index'
  get 'static_pages/secret'

  
  resources :users 
  
  resources :events do
    resources :attendances
  end



  
  
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
