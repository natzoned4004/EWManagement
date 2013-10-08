class ApplicationController < ActionController::Base
  include Clearance::Controller
  before_filter :collect_artists, :collect_company_info
  
  private
  
  def collect_artists
    @artists = Artist.all
  end
  
  def collect_company_info
    @about = StaticPage.first
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
