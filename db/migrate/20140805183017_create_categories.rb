class CreateCategories < ActiveRecord::Migration
  
  def change
  	create_table :categories do  |t|
  		t.integer :item_id
  		t.string :title
  		t.integer :line_item_id
	  	t.timestamps null: false
  	end
  end
  
end
