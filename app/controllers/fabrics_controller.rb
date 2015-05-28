class FabricsController < ApplicationController
	def new
	end

	def create
		@fabric = Fabric.new(fabric_params)
		@fabric.save
		redirect_to @fabric
	end

	def show
		@fabric = Fabric.find(params[:id])
	end

	private

		def fabric_params
			params.require(:fabric) .permit(:name,:color,:length,:width,:price,:content,:source,:swatch)
		end

end


