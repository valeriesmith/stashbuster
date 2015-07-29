class Admin::UsersController < ApplicationController

	include UsersHelper

	before_filter :block_non_admin
	
	def index
		@users = User.all	
	end

end

	