module ApplicationHelper

  def signed_in?
    if session[:user_id].nil?
      @current_user = false
    else
      @current_user = User.find_by_id(session[:user_id])
    end
    @current_user
  end
end
