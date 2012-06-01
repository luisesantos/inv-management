class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :id
      t.string :name
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
