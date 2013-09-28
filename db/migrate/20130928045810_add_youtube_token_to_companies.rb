class AddYoutubeTokenToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :youtube_token, :string
  end
end
