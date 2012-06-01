class CreateTransferOrders < ActiveRecord::Migration
  def change
    create_table :transfer_orders do |t|
      t.integer :id
      t.integer :orderNumber
      t.date :dateIssued
      t.date :dateCompleted
      t.date :dateConfirmed
      t.timestamps
    end
  end
end
