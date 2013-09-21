class DashboardsController < ApplicationController
  before_filter :is_logged_in?, :show
  
  def show
    @artists = Artist.all
    @company_info = Ewmanagement.first
  end

end