class CreateVendorMaterials < ActiveRecord::Migration
  def change
    create_table :vendor_materials do |t|
      t.float :price

      t.timestamps
    end
  end
end
