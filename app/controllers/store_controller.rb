class StoreController < ApplicationController
  include CountCart
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize
  
  before_action :get_counter, only: [:index]

  def index
    @products = Product.order(:index)
    @user_interactions = session[:counter]
  end
  
end
