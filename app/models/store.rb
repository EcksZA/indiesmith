class Store < ActiveRecord::Base
	validates :name, :country, presence: true
	validates :email, :phone, presence: true

	has_many :products
end