class Employee < ActiveRecord::Base
	belongs_to :user
	enum _type: [:teacher, :staff_member, :principal]
end
