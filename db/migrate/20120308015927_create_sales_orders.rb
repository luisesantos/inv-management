class CreateSalesOrders < ActiveRecord::Migration
  def change
    create_table :sales_orders do |t|
      t.integer :id
      t.string :orderNumber
      t.string :customerPurcharseOrderNumber
      t.string :vendorPurcharseOrderNumber
      t.date :fullfillmentDate
      t.string :status
      t.date :dateIssued
      t.date :dateCompleted
      t.string :contact
      t.timestamps
    end
  end
end
