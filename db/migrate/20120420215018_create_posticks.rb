class CreatePosticks < ActiveRecord::Migration
  def change
    create_table :posticks do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
