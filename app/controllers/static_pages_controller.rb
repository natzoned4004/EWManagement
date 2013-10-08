class StaticPagesController < ApplicationController
  before_filter :is_logged_in?, only: [:edit, :update]
  
  def show
    @page = find_page
  end
  
  def edit
    @page = find_page
  end
  
  def update
    @page = find_page
    @page.update_attributes(page_params)
    redirect_to dashboard_path
  end
  
  def home
  end
  
  private
  
  def find_page
    StaticPage.find(params[:id])
  end
  
  def page_params
    params.require(:static_page).
      permit(:permalink, :company_bio, :address, :telephone_number,
        :email, :company_name, :youtube_token, :erick_pic, :michael_pic)
  end
end