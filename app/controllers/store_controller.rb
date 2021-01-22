class StoreController < ApplicationController
  def index
    if session[:counter].nil?
      session[:counter] = 0
      puts session[:counter]
    else
      session[:counter] += 1
      puts session[:counter]
    end
    @products = Product.order(:title)
  end
end
