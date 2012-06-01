class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :id
      t.references :company
      t.timestamps
    end
    add_index :inventories, :company_id
  end
end
