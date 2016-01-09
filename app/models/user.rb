class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable, :confirmable

	has_one 	:address
	has_many 	:contacts
	has_one	:student
	has_one	:employee
	has_one	:owner

	belongs_to :school
	
	enum _type: [:owner, :employee, :student]
	enum blood_group: [:"A+", :"A-",:"B+", :"B-", :"AB+", :"AB-", :"O+", :"O-" ]
	enum gender: [:male,:female,:undefined]

end
