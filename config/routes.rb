Rails.application.routes.draw do
  resources :comments
  get 'admin' => 'admin#index'
  controller :session do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  get 'session/create'
  get 'session/destory'
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
