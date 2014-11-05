class Product < ActiveRecord::Base
	validates :name, :description, presence: true
	validates :price, :store_id, presence: true

	belongs_to :store
end