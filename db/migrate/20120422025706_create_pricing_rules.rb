class CreatePricingRules < ActiveRecord::Migration
  def change
    create_table :pricing_rules do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.string :applyToCustomer
      t.string :applyToProduct
      t.string :priceAdjustmentType
      t.float :priceAdjustmentPercentage
      t.string :relativeTo
      t.float :amount
      t.string :operator
      t.float :fixedValue
      t.boolean :applyToDates
      t.date :minDate
      t.date :maxDate
      t.boolean :applyToQuantities
      t.float :minQty
      t.float :maxQty
      t.timestamps
    end
  end
end
