class Product < ActiveRecord::Base
	validates :name, :description, presence: true
	validates :price, presence: true
end