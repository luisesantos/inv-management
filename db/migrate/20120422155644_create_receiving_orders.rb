class CreateReceivingOrders < ActiveRecord::Migration
  def change
    create_table :receiving_orders do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.string :orderNumber
      t.string :status
      t.string :refNumber
      t.date :billDate
      t.integer :packageCount
      t.float :receivedQty
      t.float :rejectedQty
      t.float :totalQty
      t.date :receiveDate
      t.date :reconcileDate
      t.string :reason
      t.string :trackingNumber

      t.timestamps
    end
  end
end
