class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :employee, :integer
    add_column :users, :employee_manager, :integer
    add_column :users, :hospital_admin, :integer
  end
end
