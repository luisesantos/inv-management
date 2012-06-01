class CreateLocatedProducts < ActiveRecord::Migration
  def change
    create_table :located_products do |t|
      t.integer :id
      t.float :qty
      t.references :location
      t.references :product
      t.timestamps
    end
    add_index :located_products, :location_id
    add_index :located_products, :product_id
  end
end
