class FabricsController < ApplicationController
	def new
	end

	def create
		@fabric = Fabric.new(params.require(:fabric) .permit(:name,:color,:length,:width,:price,:content,:source,:swatch))

		@fabric.save
		redirect_to @fabric
	end
end


