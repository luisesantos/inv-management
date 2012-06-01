class CreateProductMaterialDetails < ActiveRecord::Migration
  def change
    create_table :product_material_details do |t|
      t.integer :id
      t.references :product
      t.references :material
      t.timestamps
    end
    add_index :product_material_details, :product_id
    add_index :product_material_details, :material_id
  end
end
