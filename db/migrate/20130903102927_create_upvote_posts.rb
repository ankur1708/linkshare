class CreateUpvotePosts < ActiveRecord::Migration
  def change
    create_table :upvote_posts, :id => :false do |t|
      t.integer :user_id, :null => false
      t.integer :post_id, :null => false
      t.timestamps
    end
    add_index :upvote_posts, [:user_id, :post_id], :unique => true
  end
end