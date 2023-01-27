class StoreController < ApplicationController
  include CountCart
  include CurrentCart
  before_action :set_cart
  
  before_action :get_counter, only: [:index]

  def index
    @products = Product.order(:index)
    @user_interactions = session[:counter]
  end
  
end
