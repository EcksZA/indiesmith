class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
    	t.string :name
    	t.string :country
    	t.string :email
    	t.string :phone
    end
  end
end
