class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :title
      t.string :image
      t.references :post4, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
