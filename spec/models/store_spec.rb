require 'rails_helper'

describe Store do
	it { should validate_presence_of :name }
	it { should validate_presence_of :country }
	it { should validate_presence_of :contact_email }
	it { should validate_presence_of :phone }
	it { should validate_presence_of :email }
	it { should have_secure_password }

	it { should have_many :products }
end