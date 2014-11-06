class Product < ActiveRecord::Base
	validates :name, :description, presence: true
	validates :price, :store_id, presence: true

	belongs_to :store

	has_attached_file :photo, styles: { medium: '300x300>' },
					url: '/assets/products/:id/:style/:basename.:extension',
					path: ':rails_root/public/assets/products/:id/:style/:basename.:extension'

	# validates_attachment_presence :photo
	validates_attachment_content_type :photo, content_type: ['image/png', 'image/jpeg', 'image/jpg', 'image/gif']

end