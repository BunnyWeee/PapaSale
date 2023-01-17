class AddHeadlineToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :if_headline, :boolean
  end
end
