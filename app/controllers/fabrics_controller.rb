class FabricsController < ApplicationController
	def index
		@fabrics = Fabric.all
	end

	def show
		@fabric = Fabric.find(params[:id])
		p "FABRIC LENGTH"
		p @fabric.length
		conversions = {
			'1/8' => 0.125,
			'1/4' => 0.25,
			'3/8' => 0.375,
			'1/2' => 0.5,
			'5/8' => 0.625,
			'3/4' => 0.75,
			'7/8' => 0.875
		}
		if @fabric.length < 1
			@yardage = conversions.key(@fabric.length)
		else

	 		@whole_yards = @fabric.length.floor
	 		@partial_yards = conversions.key(@fabric.length - @fabric.length.to_i)
	 		@yardage = @whole_yards.to_s << " " << @partial_yards.to_s
	 	end
	end

	def new
		@fabrics = Fabric.all
	end

	def create
		@errors = nil
		@fabric = Fabric.new(fabric_params)
		if @fabric.save
			redirect_to @fabric
		else
			@errors = @fabric.errors
			render "new"		
		end
	end

	def destroy
		@fabric = Fabric.find(params[:id])
		@fabric.destroy

		redirect_to action: "index"

		# TODO figure out how to delete the image with carrierwave
	end

	def update
	end

	def edit
	end




	private

		def fabric_params
			params.require(:fabric) .permit(:name,:color,:length,:width,:price,:content,:source,:swatch)
		end

end


