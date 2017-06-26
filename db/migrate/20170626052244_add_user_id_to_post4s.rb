class AddUserIdToPost4s < ActiveRecord::Migration
  def change
    add_reference :post4s, :user, index: true, foreign_key: true
  end
end
