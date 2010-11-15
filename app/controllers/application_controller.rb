class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def find_cart
    unless session[:cart]
        session[:cart] = Cart.new
    end
    session[:cart]
  end  
end
