class WelcomeController < ApplicationController
  	def index
		# @users = User.all
		p "CURRENT USER ID"	
		p session[:user_id] 
		if session[:user_id] != nil
			@user =  User.find(session[:user_id])
			render 'users/show'
			p "anus"
			
		   else
		   	p "butt"
		 	 
		  end	
	end
end
