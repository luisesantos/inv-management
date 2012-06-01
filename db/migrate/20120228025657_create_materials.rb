class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :id
      t.string :name
      t.string :code
      t.float :cost
      t.float :width
      t.float :heigth
      t.float :length
      t.string :measureUnit
      t.float :weight
      t.string :weightUnit
      t.string :description
      t.boolean :active
      t.float :onHandBalance
      t.float :allocatedBalance
      t.float :nonActiveBalance
      t.float :availableBalance
      t.float :releasedRequirementsBalance
      t.float :availableToReleaseBalance
      t.float :totalRequirementsBalance
      t.float :qtyDue
      t.string :type
      t.references :material
      t.timestamps
    end
    add_index :materials, :material_id
  end
end
