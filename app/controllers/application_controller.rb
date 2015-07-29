class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  	helper_method :current_user

  
    def authorize
      redirect_to '/login' unless current_user
    end


    def check_admin
      unless current_user 
        flash.notice = "you must be logged in as admin to see these pages"
        redirect_to '/'
      else
        @user = User.find(session[:user_id])
        unless @user.admin == true
          redirect_to '/' 
          flash.notice = "you are an asshole"
        end
      end
    end
end
