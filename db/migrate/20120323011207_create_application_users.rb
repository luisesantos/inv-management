class CreateApplicationUsers < ActiveRecord::Migration
  def change
    create_table :application_users do |t|
      t.references :employee
      t.timestamps
    end
    add_index :application_users, :employee_id
  end
end
