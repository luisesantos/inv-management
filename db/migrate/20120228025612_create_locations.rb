class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :id
      t.string :name
      t.references :location
      t.references :warehouse
      t.timestamps
    end
    add_index :locations, :location_id
    add_index :locations, :warehouse_id
  end
end
