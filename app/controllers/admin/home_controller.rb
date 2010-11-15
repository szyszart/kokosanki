class Admin::HomeController < ApplicationController
  before_filter :authenticate_admin!
  def index
	@categories = Category.all
	@products = Product.all
	@units = Unit.all
  end
end

