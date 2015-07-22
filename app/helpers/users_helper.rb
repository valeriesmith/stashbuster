module UsersHelper

	def user_params
		params.require(:user) .permit(:username,:first_name,:last_name,:email,:location, :password, :password_confirmation)
	end

end



  