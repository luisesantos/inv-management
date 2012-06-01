class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.integer :id
      t.integer :orderNumber
      t.date :fullfillmentDate
      t.string :status
      t.string :vendorSalesOrderNumber
      t.date :dateIssued
      t.date :dateCompleted
      t.date :dateConfirmed
      t.float :totalWeight
      t.timestamps
    end
  end
end
