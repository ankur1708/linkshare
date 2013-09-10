class AddTitleAndDescriptionToPost < ActiveRecord::Migration
  def change
    add_column :posts, :title, :string
    add_column :posts, :url, :string
    add_column :posts, :user_id, :integer
    add_column :posts, :vote, :integer
    add_column :posts, :description, :text
  end
end
