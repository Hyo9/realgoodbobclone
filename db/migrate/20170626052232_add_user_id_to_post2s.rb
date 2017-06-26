class AddUserIdToPost2s < ActiveRecord::Migration
  def change
    add_reference :post2s, :user, index: true, foreign_key: true
  end
end
