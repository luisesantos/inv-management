class CreateFieldsGroups < ActiveRecord::Migration
  def change
    create_table :fields_groups do |t|
      t.integer :id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
