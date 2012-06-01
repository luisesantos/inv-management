class CreateConsignmentOrders < ActiveRecord::Migration
  def change
    create_table :consignment_orders do |t|
      t.integer :id
      t.integer :orderNumber

      t.timestamps
    end
  end
end
