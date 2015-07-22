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
		p "IN CREATE ACTION"
		# @errors = nil
		@user = User.new(user_params)
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
		flash.notice = "User #{@user.name}' Destroyed!"

		redirect_to action: "index"
	end

	def edit
		@user = User.find(params[:id])
		p "USER IN EDIT ACTION"
		p @user.id
	end

	def update
		p "IN update ACTION"

		@user = User.find_by_id(params[:id])
		# @user = User.find(params[:id])
		@user.update(user_params)

		flash.notice = "User #{@user.username} updated!"

		redirect_to user_path(@user)
	end


end



# require 'bcrypt'

# class User < ActiveRecord::Base
#   # users.password_hash in the database is a :string
#   include BCrypt

#   def password
#     @password ||= Password.new(password_hash)
#   end

#   def password=(new_password)
#     @password = Password.create(new_password)
#     self.password_hash = @password
#   end
# end