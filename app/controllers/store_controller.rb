class StoreController < ApplicationController
  before_action :authenticate_user!, except: [:index] 
  include CurrentCart
  before_action :set_cart 

  def index
    @products = Product.order("title")
  end
end
 