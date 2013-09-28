class CompaniesController < ApplicationController
  before_filter :is_logged_in?, only: [:edit, :update]
  
  def show
    @ew_management = Company.find(params[:id])
    @erick = User.where(first_name: 'Erick', last_name: 'Espinal').first
  end
  
  def edit
    @ew_management = Company.first
  end
  
  def update
    @ew_management = Company.first
    @ew_management.update_attributes(company_params)
    redirect_to dashboard_path
  end
  
  private
  
  def company_params
    params.require(:company).
      permit(:company_bio, :address, :telephone_number, :email, :name)
  end
end