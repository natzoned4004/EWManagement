class UsersController < Clearance::UsersController
  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to dashboard_path
  end
  
  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :profile_picture)
  end
end