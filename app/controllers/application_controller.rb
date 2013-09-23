class ApplicationController < ActionController::Base
  include Clearance::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :collect_artists, :collect_company_info
  protect_from_forgery with: :exception
  
  private
  
  def collect_artists
    @artists = Artist.all
  end
  
  def collect_company_info
    @company_info = Ewmanagement.first
  end
  
  def is_logged_in?
    if user.nil?
      redirect_to '/'
    end 
  end
  
  def user
    current_user || nil
  end
end
