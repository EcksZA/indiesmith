class Store < ActiveRecord::Base
	validates :name, :country, presence: true
end