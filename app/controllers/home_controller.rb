class HomeController < ApplicationController
	def index
	    @search = Product.search(params[:search])
        @per_page = params[:per_page] || Product.per_page
        @products = @search.paginate(:per_page => @per_page, :page => params[:page])
		
		@categories = Category.all
		@cart = find_cart
	end
	
	def add_to_cart	
    	product = Product.find(params[:id])
	    @cart = find_cart
	    @cart.add_product(product)
	    redirect_to root_path
	end
	
    def empty_cart
        session[:cart] = nil
	    redirect_to root_path
    end	
	
	def checkout
	end
end

