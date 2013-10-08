class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :permalink
      t.string :company_name
      t.string :address
      t.string :telephone_number
      t.string :email
      t.string :youtube_token
      t.text :company_bio
      t.attachment :erick_pic
      t.attachment :michael_pic
    end
  end
end
 