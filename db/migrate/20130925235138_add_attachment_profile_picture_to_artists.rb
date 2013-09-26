class AddAttachmentProfilePictureToArtists < ActiveRecord::Migration
  def self.up
    change_table :artists do |t|
      t.attachment :profile_picture
    end
  end

  def self.down
    drop_attached_file :artists, :profile_picture
  end
end
