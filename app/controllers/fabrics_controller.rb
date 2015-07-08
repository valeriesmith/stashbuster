class FabricsController < ApplicationController
	def index
		@fabrics = Fabric.all
	end

	def show
		@fabric = Fabric.find(params[:id])
	end

	def new
		@fabrics = Fabric.all
	end

	def create
		@errors = nil
		p "FABRIC PARAMS"
		fabric_params[:length] = fabric_params[:length] + ' anus'
		p fabric_params[:length]
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


