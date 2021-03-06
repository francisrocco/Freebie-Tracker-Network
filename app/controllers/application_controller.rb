class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  #protect_from_forgery with: :null_session

  helper_method :current_user, :authorize

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to '/' unless logged_in?
  end

  def logged_in?
    !!session[:user_id]
  end


end
