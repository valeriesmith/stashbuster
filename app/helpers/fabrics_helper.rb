module FabricsHelper

	def fabric_params
		params.require(:fabric) .permit(:name,:color,:length,:width,:price,:content,:source,:swatch)
	end

end
