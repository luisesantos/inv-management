class CreateDocumentedMaterials < ActiveRecord::Migration
  def change
    create_table :documented_materials do |t|
      t.float :qty
      t.references :document
      t.references :material
      t.timestamps
    end
    add_index :documented_materials, :document_id
    add_index :documented_materials, :material_id
  end
end
