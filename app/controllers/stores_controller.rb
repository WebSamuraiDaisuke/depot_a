class StoresController < ApplicationController
  before_action :required_logged_in
  def index
    @products = Product.order(:title)
  end
end
