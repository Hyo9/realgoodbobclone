class CreatePost3s < ActiveRecord::Migration
  def change
    create_table :post3s do |t|
   
      t.string :title1
      t.string :place1
      t.string :image1
      t.text :memo1
      
      t.string :title2
      t.string :place2
      t.string :image2
      t.text :memo2
      
      t.string :title3
      t.string :place3
      t.string :image3
      t.text :memo3
      
      t.string :title4
      t.string :place4
      t.string :image4
      t.text :memo4
      
      t.string :title5
      t.string :place5
      t.string :image5
      t.text :memo5

      t.timestamps null: false
    end
  end
end
