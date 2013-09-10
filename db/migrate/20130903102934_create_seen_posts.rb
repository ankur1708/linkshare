class CreateSeenPosts < ActiveRecord::Migration
  def change
    create_table :seen_posts, :id => :false do |t|
      t.integer :user_id, :null => false
      t.integer :post_id, :null => false
      t.timestamps
    end
    add_index :seen_posts, [:user_id, :post_id], :unique => true
  end
end