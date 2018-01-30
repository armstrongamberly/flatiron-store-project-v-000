class CreateCarts < ActiveRecord::Migration
  
  def change
  	create_table :carts do |t|
  		t.integer :user_id
  		t.integer :item_id
  		t.integer :line_item_id
  		t.integer :order_id
  		t.decimal :total
        t.string :checkout_status, default: "no"
        t.string :status
  		t.timestamps null: false
  	end
  end

end
