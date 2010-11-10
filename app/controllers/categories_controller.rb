class CategoriesController < ApplicationController
	before_filter :authenticate_admin!
	def edit
		@category = Category.find(params[:id])				
	end

	def update
		@category = Category.find(params[:id])
		if @category.update_attributes(params[:category])
			redirect_to :controller => "admin/home"
                else
                        render :action => :edit
                end                                             
 
	end

	def new
		@category = Category.new
	end

	def create
    		@category = Category.new(params[:category])

                if @category.save
			redirect_to :controller => "admin/home"
                else
                        render :action => :new
                end                     
	end

	def destroy
		@category = Category.destroy(params[:id])
		@category.destroy
		redirect_to :controller => "admin/home"		
	end
end
