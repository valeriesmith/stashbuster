class UsersController < ApplicationController

	include UsersHelper
	
	def index
		@users = User.all	
	end

	def show
		check_user
		@admin = admin?
		# @user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		@user.admin = false
		if @user.save
			session[:user_id] = @user.id
			
			flash.notice = "User #{@user.username} Created!"
			
			redirect_to '/'
	
		else
			# @errors = @user.errors
			# render "new"
			flash.notice = "User #{@user.username} not created!"
			redirect_to '/signup'	
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash.notice = "User #{@user.username}' Destroyed!"
		if admin? == true
			redirect_to '/admin/users'
		else
			session[:user_id] = nil
			redirect_to action: "index"
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@admin = admin?
		@user = User.find_by_id(params[:id])
		@user.update(user_params)

		flash.notice = "User #{@user.username} updated!"

		if admin? == true
			redirect_to '/admin/users'
		else
			redirect_to user_path(@user)
		end
	end
end

