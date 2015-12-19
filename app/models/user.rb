class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable, :confirmable

	enum _type: [:owner, :teacher, :staff_member, :principal]
	enum blood_group: [:"A+", :"A-",:"B+", :"B-", :"AB+", :"AB-", :"O+", :"O-" ]
	enum gender: [:male,:female,:undefined]

	has_one 	:address
	has_many 	:contacts
end

