class CreatePickOrders < ActiveRecord::Migration
  def change
    create_table :pick_orders do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.date :scheduled
      t.string :status
      t.timestamps
    end
  end
end
