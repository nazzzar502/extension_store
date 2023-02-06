class AdminController < ApplicationController
  def index
    user_id = session[:user_id]
    @user = User.find_by(id: user_id)
    @total_orders = Order.count
  end
end
