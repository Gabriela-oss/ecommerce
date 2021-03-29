class CartsController < ApplicationController
  before_action :autheticate_user!
  def update
    product = params[:card][:product_id]
    quantity = params[:card][:quantity]

    current_order.add_product(product, quantity)
    
    redirect_to root_url, notice: 'Product added successfuly'
  end

  def show
    @order = current_order
  end
end
