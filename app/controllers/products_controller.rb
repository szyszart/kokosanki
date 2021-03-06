class ProductsController < ApplicationController
	before_filter :authenticate_admin!, :except => [:show]

    def show
		@product = Product.find(params[:id])
		@cartitem = CartItem.new(@product)		
    end

	def edit
		@product = Product.find(params[:id])		
		@categories = Category.all
		@units = Unit.all	
	end

	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(params[:product])
			redirect_to :controller => "admin/home"
        else
            render :action => :edit
        end
	end

	def new
		@product = Product.new
		@categories = Category.all		
		@units = Unit.all
	end

	def create
		@product = Product.new(params[:product])
    	@categories = Category.all		
   		@units = Unit.all

        if @product.save
            redirect_to :controller => "admin/home"
        else
            render :action => :new
        end                     
	end

	def destroy
		@product = Product.destroy(params[:id])
		@product.destroy
		redirect_to :controller => "admin/home"		
	end
end
