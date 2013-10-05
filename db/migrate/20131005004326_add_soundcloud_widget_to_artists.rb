class AddSoundcloudWidgetToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :soundcloud_widget, :string
  end
end 