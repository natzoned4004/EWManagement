class UsersController < Clearance::UsersController
  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to dashboard_path
  end
  
  private
  
  def user_params
    params.require(:user).permit(:profile_picture)
  end
end