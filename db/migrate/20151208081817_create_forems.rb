class CreateForems < ActiveRecord::Migration
  def change
    create_table :forems do |t|
      t.string :title
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
