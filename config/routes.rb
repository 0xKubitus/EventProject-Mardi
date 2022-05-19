Rails.application.routes.draw do

  resources :orders, only: [:create]
  get 'cancel', to: 'order#cancel', as: 'order_cancel'
  get 'success', to: 'order#success', as: 'order_success'


  root to: 'events#index'

  devise_for :users

  
  resources :users 
  
  resources :events do
    resources :attendances
  end


  #les 2 lignes ne sont pas utiles - peuvent être supprimées (les 2 pages qui y sont liées ne servent à rien)
  get 'static_pages/index'
  get 'static_pages/secret'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
