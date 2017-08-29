class StoreController < ApplicationController
  def index
  	@products = Product.all
  	@cart = current_cart
  	if session[:counter].nil?
  		session[:counter] = 0
  	end
  	@counter = session[:counter] + 1
  	session[:counter] = @counter
  end
end