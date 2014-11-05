class Product < ActiveRecord::Base
	validates :name, :description, presence: true
	validates :price, presence: true

	belongs_to :store
end