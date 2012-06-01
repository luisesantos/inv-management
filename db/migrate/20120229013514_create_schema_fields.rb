class CreateSchemaFields < ActiveRecord::Migration
  def change
    create_table :schema_fields do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
