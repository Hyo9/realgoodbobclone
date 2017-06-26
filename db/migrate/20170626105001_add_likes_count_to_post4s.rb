class AddLikesCountToPost4s < ActiveRecord::Migration
  def change
    add_column :post4s, :likes_count, :integer
  end
end
