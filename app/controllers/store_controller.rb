class StoreController < ApplicationController
  include SessionCounter

  def index
    @products = Product.order(:title)
    @count = set_count
  end
end
