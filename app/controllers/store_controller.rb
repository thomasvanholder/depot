class StoreController < ApplicationController
  include SessionCounter
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    @count = set_count
  end
end
