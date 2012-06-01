class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
