class Cart < ActiveRecord::Base
	belongs_to :user
	has_many :line_items
	has_many :items, through: :line_items

	def add_item(item)
		line_item = self.line_items.detect do |cart_item|
		 	cart_item.item_id == item.to_i
		 	end
		 if line_item 
			line_item.quantity += 1
			line_item
		else
			line_item = self.line_items.build(item_id: item)
			line_item.quantity = 1
		end
		line_item
	end

	def total
		total = 0
		self.line_items.each do |line_item|
			total = total + line_item.item.price * line_item.quantity
			end
		total
	end

	def checkout
    	self.line_items.each do |line_item|
          line_item.item.inventory = line_item.item.inventory - line_item.quantity
          line_item.item.save  
 	 	end
 	 self.checkout_status = "yes"
  end

end
