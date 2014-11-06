class EditStoreTable < ActiveRecord::Migration
  def change
  	remove_column :stores, :email
  	add_column :stores, :contact_email, :string
  	add_column :stores, :email, :string
  end
end
