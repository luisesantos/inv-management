class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.string :name
      t.boolean :active
      t.float :width
      t.float :heigth
      t.float :length
      t.string :measureUnit
      t.float :weight
      t.string :weightUnit
      t.float :onHandBalance
      t.float :allocatedBalance
      t.float :nonActiveBalance
      t.float :availableBalance
      t.float :releasedRequirementsBalance
      t.float :availableToReleaseBalance
      t.float :totalRequirementsBalance
      t.float :qtyDue
      t.string :type #this is to tell the application if we are going to keep
      #track of this item with numbers of serials
      t.timestamps
    end
  end
end
