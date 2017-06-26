class AddUserIdToPost3s < ActiveRecord::Migration
  def change
    add_reference :post3s, :user, index: true, foreign_key: true
  end
end
