class ApplicationController < ActionController::Base
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    redirect_to root_path unless session[:user_id]
  end
end
