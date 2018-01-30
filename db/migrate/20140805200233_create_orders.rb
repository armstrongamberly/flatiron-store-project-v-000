class CreateOrders < ActiveRecord::Migration
  
  def change
  	create_table :orders do |t|
  		t.integer :item_id
  		t.integer :line_item_id
  		t.integer :cart_id
  		t.integer :user_id

	  	t.timestamps null: false
	  end
  end

end
