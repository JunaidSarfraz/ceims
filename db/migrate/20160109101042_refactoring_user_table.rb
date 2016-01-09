class RefactoringUserTable < ActiveRecord::Migration
  def change
  	remove_column :users, :rollno
  	remove_column :users, :employee_number
  end
end
