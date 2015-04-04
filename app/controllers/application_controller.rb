class ApplicationController < ActionController::Base
  protect_from_forgery


  include ApplicationHelper
  before_filter :current_user

  def authorise
    unless signed_in?
      store_location
      redirect_to signin_path, :notice => "Please sign in to access this page."
    end
  end


  def store_location
    session[:return_to] = request.fullpath
  end

  def current_user
    p "session[:user_id]", session[:user_id]
    @current_user = User.find(session[:user_id]) if session[:user_id].present?
  end
end
   
   