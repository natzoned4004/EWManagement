class CreateEwmanagements < ActiveRecord::Migration
  def change
    create_table :ewmanagements do |t|
      t.text :company_bio
      t.string :address
      t.string :telephone_number
      t.string :email
    end
  end
end
