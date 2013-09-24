class RenameEwmanagementsToCompanies < ActiveRecord::Migration
  def change
    rename_table :ewmanagements, :companies
  end
end
