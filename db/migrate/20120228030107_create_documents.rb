class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :id
      t.string :name
      t.string :type
      t.timestamps
    end
  end
end
