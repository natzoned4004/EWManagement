class UsersController < Clearance::UsersController
  def update
    @user = find_user
    @user.update_attributes(user_params)
    redirect_to dashboard_path
  end
  
  private
  
  def find_user
    User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :profile_picture)
  end
end