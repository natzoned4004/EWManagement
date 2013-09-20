class ApplicationController < ActionController::Base
  include Clearance::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private
  
  def is_logged_in?
    if user.nil?
      redirect_to '/'
    end 
  end
  
  def user
    current_user || nil
  end
end
