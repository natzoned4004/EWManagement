class Artist < ActiveRecord::Base
  has_attached_file :profile_picture, 
    :default_url => "form/missing_profile.jpg"
end