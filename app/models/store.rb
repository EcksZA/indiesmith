class Store < ActiveRecord::Base
	validates :name, :country, presence: true
	validates :contact_email, :phone, presence: true

	has_many :products
end