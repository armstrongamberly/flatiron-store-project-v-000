class LineItemsController < ApplicationController

  def create
	if current_user.current_cart
	  line_item = current_user.current_cart.add_item(params[:item_id])
	else 
	  current_user.create_current_cart
	  line_item = current_user.current_cart.add_item(params[:item_id])
	end
	if line_item.save
	  current_user.current_cart.save
	  redirect_to cart_path(current_user.current_cart)
	else 
	  redirect_to store_path
	end
  end

end