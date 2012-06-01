class CreateLocatedMaterials < ActiveRecord::Migration
  def change
    create_table :located_materials do |t|
      t.integer :id
      t.float :qty
      t.references :location
      t.references :material
      t.timestamps
    end
    add_index :located_materials, :location_id
    add_index :located_materials, :material_id
  end
end
