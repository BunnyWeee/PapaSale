class AddColumnToUsersAndPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :posts_count, :integer, default: 0, limit: 4
    add_column :posts, :user_id, :integer
    add_index :posts, :user_id
  end
end
