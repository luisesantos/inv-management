class CreateSchemas < ActiveRecord::Migration
  def change
    create_table :schemas do |t|
      t.integer :id
      t.string :name
      t.string :schemaType
      t.timestamps
    end
  end
end