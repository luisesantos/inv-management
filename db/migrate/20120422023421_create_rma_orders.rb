class CreateRmaOrders < ActiveRecord::Migration
  def change
    create_table :rma_orders do |t|
      t.integer :id
      t.string :orderNumber
      t.string :status
      t.string :type
      t.string :vendorRmaNumber

      t.timestamps
    end
  end
end
