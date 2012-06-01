class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :id
      t.string :packageNumber
      t.string :note
      t.float :width
      t.float :heigth
      t.float :length
      t.string :measureUnit
      t.float :weight
      t.string :weightUnit
      t.float :totalCost
      t.references :document
      t.timestamps
    end
    add_index :packages, :document_id
  end
end
