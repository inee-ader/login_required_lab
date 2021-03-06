class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= (session[:name]) if session[:name]
  end


end
