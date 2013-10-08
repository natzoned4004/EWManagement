class StaticPage < ActiveRecord::Base
  has_attached_file :erick_pic, :default_url => "form/missing_profile.jpg"
  has_attached_file :michael_pic, :default_url => "form/missing_profile.jpg"
end