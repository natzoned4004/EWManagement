class Artist < ActiveRecord::Base
  has_attached_file :profile_picture
end