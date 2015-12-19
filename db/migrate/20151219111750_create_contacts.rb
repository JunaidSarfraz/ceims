class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string	:name
    	t.string	:number
    	t.integer	:_type
    	t.integer	:student_id
    	t.integer	:teacher_id
    	t.integer	:staff_id
    	t.integer	:owner_id
    	t.integer	:principal_id
    	t.integer	:branch_id
    	t.timestamps null: false
    end
  end
end
