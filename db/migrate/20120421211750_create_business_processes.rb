class CreateBusinessProcesses < ActiveRecord::Migration
  def change
    create_table :business_processes do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.references :business_processes
      t.timestamps
    end
    add_index :business_processes, :business_processes_id
  end
end
