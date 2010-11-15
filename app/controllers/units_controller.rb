class UnitsController < ApplicationController
	before_filter :authenticate_admin!
	
	def edit
		@unit = Unit.find(params[:id])				
	end

	def update
		@unit = Unit.find(params[:id])
		if @unit.update_attributes(params[:unit])
			redirect_to :controller => "admin/home"
        else
            render :action => :edit
        end                                             
	end

	def new
		@unit = Unit.new
	end

	def create
   		@unit = Unit.new(params[:unit])

        if @unit.save
			redirect_to :controller => "admin/home"
        else
            render :action => :new
        end                     
	end

	def destroy
		@unit = Unit.destroy(params[:id])
		@unit.destroy
		redirect_to :controller => "admin/home"		
	end
end
