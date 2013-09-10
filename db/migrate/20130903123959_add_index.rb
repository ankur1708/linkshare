class AddIndex < ActiveRecord::Migration
  def up
    add_index :assignments, [:tag_id, :post_id]
  end

  def down
  end
end
