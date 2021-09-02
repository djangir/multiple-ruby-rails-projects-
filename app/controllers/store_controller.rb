class StoreController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @products = Product.order("title")
  end
end
 