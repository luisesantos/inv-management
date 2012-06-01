class CreateEmployeeGroups < ActiveRecord::Migration
  def change
    create_table :employee_groups do |t|
      t.integer :id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
