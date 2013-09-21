class EwmanagementsController < ApplicationController
  before_filter :is_logged_in?, only: [:edit, :update]
  
  def edit
    @company_info = get_EWManagement_info
  end
  
  def update
    @company_info = get_EWManagement_info
    @company_info.update_attributes(info_params)
    redirect_to dashboard_path
  end
  
  private
  
  def get_EWManagement_info
    Ewmanagement.first
  end
  
  def info_params
    params.require(:ewmanagement).permit(:company_bio, :address,
      :telephone_number, :email)
  end
  
end