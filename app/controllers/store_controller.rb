class StoreController < ApplicationController
  def index
    @products = Product.order(:index)
  end
end
