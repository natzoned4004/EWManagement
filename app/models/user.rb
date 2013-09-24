class User < ActiveRecord::Base
  include Clearance::User
  has_attached_file :profile_picture
  
  def full_name
    "#{first_name} #{last_name}"
  end
end