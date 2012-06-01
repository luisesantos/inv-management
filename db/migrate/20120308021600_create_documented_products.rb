class CreateDocumentedProducts < ActiveRecord::Migration
  def change
    create_table :documented_products do |t|
      t.integer :id
      t.float :qty
      t.references :document
      t.references :product
      t.timestamps
    end
    add_index :documented_products, :document_id
    add_index :documented_products, :product_id
  end
end
