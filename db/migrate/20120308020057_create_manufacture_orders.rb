class CreateManufactureOrders < ActiveRecord::Migration
  def change
    create_table :manufacture_orders do |t|
      t.integer :id
      t.integer :orderNumber
      t.string :type
      t.string :status
      t.date :scheduledDate
      t.date :issuedDate
      t.date :fullfilledDate
      t.timestamps
    end
  end
end
