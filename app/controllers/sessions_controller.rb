class SessionsController < ApplicationController

  def create
    user = User.find_by_fname(params[:fname])
    if user && user.authenticate(params[:password])
	      if user.email_confirmed
          session[:user_id] = user.id
          session[:cart] = []
          redirect_to user
		    else
          flash.now[:error] = 'Please activate your account by following the instructions in the accunt confirmation email you received to proceed'
          render 'new'
	       end
      session[:user_id] = user.id
      session[:cart] = []
      @current_user = user
    else
      flash.now[:error] = "INVALID name/password...."
    end
  end
  

  def destroy
    if signed_in?
      session[:user_id] = nil
      session[:cart] = nil
    else
      flash[:notice] = "You need to sign in first"
    end
    redirect_to signin_path
  end

  def new
  end
end