class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
    	t.string :employment_number
    	t.integer :_type
    	t.integer :user_id
    	t.timestamps null: false
    end
  end
end
