class WelcomeController < ApplicationController
  	def index
		if session[:user_id] != nil
			@user =  User.find(session[:user_id])
			# render 'users/show'	
			redirect_to user_path(@user)	
	 
		end	
	end
end
