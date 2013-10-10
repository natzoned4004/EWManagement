class UsersController < ApplicationController
  skip_before_filter :authorize, :only => [:create, :new]
  before_filter :avoid_sign_in, :only => [:create, :new], :if => :signed_in?

  def new
    @user = user_from_params
    render :template => 'users/new'
  end

  def create
    @user = user_from_params
    
    if master? && @user.save
      sign_in @user
      redirect_back_or url_after_create
    else
      render :template => 'users/new'
    end
  end

  private

  def avoid_sign_in
    redirect_to Clearance.configuration.redirect_url
  end

  def url_after_create
    Clearance.configuration.redirect_url
  end
  
  def master?
    email = User.first.email
    master = user_params[:master]
    Clearance.configuration.user_model
      .authenticate(email, master)
  end

  def user_params
    params.require(:user).permit(:email, :password, :master)
  end

  def user_from_params
    user_hash = user_params || Hash.new
    user_hash.delete(:master)
    email = user_hash.delete(:email)
    password = user_hash.delete(:password)

    Clearance.configuration.user_model.new(user_hash).tap do |user|
      user.email = email
      user.password = password
    end
  end
end