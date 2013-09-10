class CreateDownvotePosts < ActiveRecord::Migration
  def change
    create_table :downvote_posts, :id => :false do |t|
      t.integer :user_id, :null => false
      t.integer :post_id, :null => false
      t.timestamps
    end
    add_index :downvote_posts, [:user_id, :post_id], :unique => true
  end
end
