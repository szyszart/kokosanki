class CategoriesController < ApplicationController
	before_filter :authenticate_admin!, :except => [:show]
	

	def show
	    @categories = Category.all	    
	    @category = Category.find(params[:id])

	    @search = @category.products.search(params[:search])
    	@products = @search.paginate(:page => params[:page], :per_page => 2)	    
    	@cart = find_cart
    	render :layout => 'home'
	end
	
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
