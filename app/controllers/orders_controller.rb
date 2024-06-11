class OrdersController < ApplicationController

  def create
    order = Order.new(
      user_id: 1,
      bike_id: 2,
      quantity: 1,
      subtotal: 500,
      tax: 50,
      total: 550,
    )
    if order.save
      render template: "orders/show"
    end
  end
    
  def show
    @order = Order.find_by(id: 2)
    render template: "orders/show"
      
  end
      
  def index
    @orders = Order.all
    render template: "orders/index"

  end
end
