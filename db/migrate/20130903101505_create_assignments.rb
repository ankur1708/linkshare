class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments, :id => :false do |t|
      t.integer :user_id, :null => false
      t.integer :post_id, :null => false
      t.timestamps
    end
    add_index :assignments, [:user_id, :post_id], :unique => true
  end
end
