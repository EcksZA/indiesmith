class Store < ActiveRecord::Base
	validates :name, :country, presence: true
	validates :contact_email, :phone, presence: true
	validates :email, presence: true

	has_secure_password

	has_many :products
end