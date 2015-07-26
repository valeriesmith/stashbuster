class UsersController < ApplicationController

	include UsersHelper
	
	def index
		@users = User.all	
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		# @errors = nil
		# params[:admin] = false
		# p "USER ADMIN SETTING BEFORE SAVE"
		# p params[:admin]
		@user = User.new(user_params)
		# user_params[:admin] = false
		# p user_params[:admin]
		@user.admin = false
		if @user.save
			session[:user_id] = @user.id
			# p "USER ADMIN SETTING IN SAVE"
			# p user_params[:admin]
			p "@user.admin"
			p @user.admin
			p "@user.username"
			p @user.username

			
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
		session[:user_id] = nil
		redirect_to action: "index"
	end

	def edit
		@user = User.find(params[:id])
		p @user.id
	end

	def update
		@user = User.find_by_id(params[:id])
		@user.update(user_params)

		flash.notice = "User #{@user.username} updated!"

		redirect_to user_path(@user)
	end


end

