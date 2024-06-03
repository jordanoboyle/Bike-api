class CreateBikes < ActiveRecord::Migration[7.1]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :brand
      t.integer :price
      t.string :image_url

      t.timestamps
    end
  end
end
