class ProductsController < ApplicationController
	before_filter :authenticate_admin!

	def edit
		@product = Product.find(params[:id])				
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
	end

	def create
		@product = Product.new(params[:product])
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
