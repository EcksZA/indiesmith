class Store < ActiveRecord::Base
	validates :name, :country, presence: true
	validates :email, presence: true
end