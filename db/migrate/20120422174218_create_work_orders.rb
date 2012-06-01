class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.integer :id
      t.string :orderNumber
      t.string :description
      t.date :scheduledDate

      t.timestamps
    end
  end
end
