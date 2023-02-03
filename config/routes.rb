Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  #get 'store/index'
  root 'store#index', as: 'store_index'
  resources :products do 
    get :transfer_order_info, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
