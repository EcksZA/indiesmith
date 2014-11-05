require 'rails_helper'

describe Store do
	it { should validate_presence_of :name }
	it { should validate_presence_of :country }
	it { should validate_presence_of :email }
	it { should validate_presence_of :phone }

	it { should have_many :products }
end