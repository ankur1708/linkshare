class RemoveColumns < ActiveRecord::Migration
  def up
    remove_column :assignments, :user_id
    add_column :assignments, :tag_id, :integer
  end

  def down
  end
end
