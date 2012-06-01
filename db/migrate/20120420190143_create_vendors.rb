class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.string :status
      t.string :accountNumber
      t.float :minOrderAmount
      t.timestamps
    end
  end
end
