class AddUserIdToForems < ActiveRecord::Migration
  def up
    change_table(:forems) do |t|
        t.integer :user_id
    end
  end
  def down
    change_table(:forems) do |t|
        t.remove :user_id
    end
  end
end
