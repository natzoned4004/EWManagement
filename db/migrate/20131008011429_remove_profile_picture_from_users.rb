class RemoveProfilePictureFromUsers < ActiveRecord::Migration
  def self.up
    drop_attached_file :users, :profile_picture
  end
  
  def self.down
    change_table :users do |t|
      t.attachment :profile_picture
    end
  end
end
