class DashboardsController < ApplicationController
  def show
    @artists = Artist.all
  end
  
  
end