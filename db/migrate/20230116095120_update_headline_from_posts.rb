class UpdateHeadlineFromPosts < ActiveRecord::Migration[6.0]
  def change
    change_column_default :posts, :if_headline, false
  end
end
