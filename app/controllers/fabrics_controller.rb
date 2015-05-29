class FabricsController < ApplicationController
	def new
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

	def show
		@fabric = Fabric.find(params[:id])
	end

	private

		def fabric_params
			params.require(:fabric) .permit(:name,:color,:length,:width,:price,:content,:source,:swatch)
		end

end


