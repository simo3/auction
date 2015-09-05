class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.text :item_info
      t.integer :price
      t.integer :seller_id
      t.string :email
      t.string :img_url

      t.timestamps null: false
    end
  end
end
