class Branch < ActiveRecord::Base

	belongs_to :school
	has_one :address
	has_many :contacts
end
