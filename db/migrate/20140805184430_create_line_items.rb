class CreateLineItems < ActiveRecord::Migration
  
  def change
  	create_table :line_items do |t|
  		t.string :name
      t.string :title
  		t.integer :quantity
  		t.integer :category_id
  		t.integer :item_id
  		t.integer :cart_id
      t.decimal :price, :precision => 8, :scale => 2
  		t.timestamps null: false
  	end
  end
  
end
