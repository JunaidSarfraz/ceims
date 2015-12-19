class AddEmployeeIdInContactsAndAddress < ActiveRecord::Migration
  def change
  	remove_column :contacts, :teacher_id
  	remove_column :contacts, :staff_id
  	add_column :contacts, :employee_id, :integer

  	remove_column :addresses, :teacher_id
  	remove_column :addresses, :staff_id
  	add_column :addresses, :employee_id, :integer
  end
end
