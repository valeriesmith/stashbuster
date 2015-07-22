class FabricsController < ApplicationController

	include FabricsHelper
	
	def yardage_calc(length)
		conversions = {
			'1/8' => 0.125,
			'1/4' => 0.25,
			'3/8' => 0.375,
			'1/2' => 0.5,
			'5/8' => 0.625,
			'3/4' => 0.75,
			'7/8' => 0.875
		}
		if length < 1
			yardage = conversions.key(length)
		else

	 		whole_yards = length.floor
	 		partial_yards = conversions.key(length - length.to_i)
	 		yardage = whole_yards.to_s << " " << partial_yards.to_s
	 	end
	end

	def index
		@fabrics = Fabric.all
	end

	def show
		@fabric = Fabric.find(params[:id])
		@yardage = yardage_calc(@fabric.length)
	end

	def new
		@fabrics = Fabric.new
	end

	def create
		@errors = nil
		@fabric = Fabric.new(fabric_params)
		if @fabric.save

			flash.notice = "Fabric #{@fabric.name}' Created!"
			
			redirect_to @fabric
		else
			@errors = @fabric.errors
			render "new"		
		end
	end

	def destroy
		@fabric = Fabric.find(params[:id])
		@fabric.destroy
		flash.notice = "Fabric #{@fabric.name}' Destroyed!"

		redirect_to action: "index"
	end

	def edit
		@fabric = Fabric.find(params[:id])
		@yardage = yardage_calc(@fabric.length)
		@action = params[:action]
		@length = @fabric.length
		@width = @fabric.width
	end

	def update
		@fabric = Fabric.find(params[:id])
		@fabric.update(fabric_params)

		flash.notice = "Fabric #{@fabric.name} updated!"

		redirect_to @fabric
	end


end


