class AddAllRecordFieldsInUser < ActiveRecord::Migration
  def change
  		add_column	:users, :name, :string
  		add_column	:users, :rollno, :string
  		add_column	:users, :gender, :integer
  		add_column	:users, :blood_group, :integer
  		add_column	:users, :height, :decimal, :precision => 2
  		add_column	:users, :dob, :date
  		add_column	:users, :age, :integer
  		add_column	:users, :cnic, :string
  		add_column	:users, :_type, :integer
  		add_column	:users, :employee_number, :string

	  	remove_column :contacts, :employee_id
	  	remove_column :contacts, :student_id
	  	remove_column :contacts, :owner_id
	  	remove_column :contacts, :principal_id
  		add_column 	  :contacts, :user_id, :integer


	  	remove_column :addresses, :employee_id
	  	remove_column :addresses, :student_id
	  	remove_column :addresses, :owner_id
	  	remove_column :addresses, :principal_id
	  	add_column	  :addresses, :user_id, :integer
  end
end
