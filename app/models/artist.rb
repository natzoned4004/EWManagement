class Artist < ActiveRecord::Base
  default_scope { order('id ASC') }
  
  has_attached_file :profile_picture, 
    :default_url => "form/missing_profile.jpg"
end