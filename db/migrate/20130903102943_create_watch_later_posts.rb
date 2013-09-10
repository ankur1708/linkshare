class CreateWatchLaterPosts < ActiveRecord::Migration
  def change
    create_table :watch_later_posts, :id => :false do |t|
      t.integer :user_id, :null => false
      t.integer :post_id, :null => false
      t.timestamps
    end
    add_index :watch_later_posts, [:user_id, :post_id], :unique => true
  end
end
