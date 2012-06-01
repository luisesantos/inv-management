class CreateMaterialGroups < ActiveRecord::Migration
  def change
    create_table :material_groups do |t|
      t.integer :id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
