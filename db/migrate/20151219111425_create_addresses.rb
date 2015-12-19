class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.string	:address
    	t.string 	:city
    	t.string	:state
    	t.string	:country
    	t.integer	:zip_code
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
