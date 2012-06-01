class CreateShippingOrders < ActiveRecord::Migration
  def change
    create_table :shipping_orders do |t|
      t.integer :id
      t.string :orderNumber
      t.string :status
      t.integer :numberOfPackages
      t.float :totalWeight
      t.date :dateShipped
      t.timestamps
    end
  end
end
